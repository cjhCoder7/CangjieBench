import http.client
import json
import os
import subprocess
import time
import shutil
from pathlib import Path
from urllib.parse import quote

ACCESS_TOKEN = os.environ.get("GITCODE_ACCESS_TOKEN", "")
KEY_WORD = ["Cangjie", quote("仓颉")]
PAGE_INDEX = [i for i in range(1, 101)]
PER_PAGE = 50
FORK = quote("否")
SORT = "stars_count"
LANGUAGE = "Cangjie"
BASE_REPO_SEARCH_URL = "/api/v5/search/repositories?access_token={access_token}&page={page_index}&per_page={per_page}&q={key_word}&sort={sort}&language={language}"
BASE_REPO_LANGUAGES_URL = "/api/v5/repos/{full_name}/languages?access_token={access_token}"

BASE_SAVE_PATH = "CangjieCode"
REPO_INFO_FILE = "repo_info.json"
REPO_INFO_JSON = {
    "id": 0,
    "full_name": "",
    "url": "",
    "description": "",
    "http_url_to_repo": "",
    "updated_at": "",
    "default_branch": "",
    "public": True,
    "cangjie_percent": 0.0,
    "stars_count": 0
}
CODE_PATH = Path(BASE_SAVE_PATH) / "code"
REPO_INFO_PATH = Path(BASE_SAVE_PATH) / REPO_INFO_FILE
CODE_PATH.mkdir(parents=True, exist_ok=True)
REPO_INFO_PATH.parent.mkdir(parents=True, exist_ok=True)
repo_infos = []
with open(REPO_INFO_PATH, "w", encoding="utf-8") as f:
    json.dump(repo_infos, f, indent=4, ensure_ascii=False)

conn = http.client.HTTPSConnection("api.gitcode.com")
payload = ''
headers = {
  'Accept': 'application/json'
}

repo_count = 0
for key_word in KEY_WORD:
    for index in PAGE_INDEX:
        conn.request("GET", BASE_REPO_SEARCH_URL.format(access_token=ACCESS_TOKEN, page_index=index, per_page=PER_PAGE, key_word=key_word, sort=SORT, language=LANGUAGE), payload, headers)
        res = conn.getresponse()
        search_datas = res.read()
        search_datas = search_datas.decode("utf-8")
        search_datas = json.loads(search_datas)
        
        if search_datas == []:
            continue

        for search_data in search_datas:
            try:
                repo_info = REPO_INFO_JSON.copy()
                repo_info["id"] = search_data["id"]
                repo_info["full_name"] = search_data["full_name"]
                repo_info["url"] = search_data["url"]
                repo_info["description"] = search_data["description"]
                repo_info["http_url_to_repo"] = search_data["http_url_to_repo"]
                repo_info["updated_at"] = search_data["updated_at"]
                repo_info["default_branch"] = search_data["default_branch"]
                repo_info["public"] = search_data["public"]
                repo_info["stars_count"] = search_data["stargazers_count"]
            
            
                if repo_info["public"] != True:
                    continue

                with open(REPO_INFO_PATH, "r", encoding="utf-8") as f:
                    repo_infos = json.load(f)
                    if any(repo_info["id"] == item["id"] for item in repo_infos):
                        continue

                conn.request("GET", BASE_REPO_LANGUAGES_URL.format(access_token=ACCESS_TOKEN,full_name=repo_info["full_name"]), payload, headers)
                res = conn.getresponse()
                language_data = res.read()
                language_data = language_data.decode("utf-8")
                language_data = json.loads(language_data)
                
                if "Cangjie" not in language_data or language_data["Cangjie"] < 80:
                    continue

                repo_info["cangjie_percent"] = language_data["Cangjie"]

                retry_time = 0
                max_retry_time = 5
                repo_url = repo_info["http_url_to_repo"]
                local_path = CODE_PATH / repo_info["full_name"]
                while retry_time < max_retry_time:
                    try:
                        result = subprocess.run(
                            ["git", "clone", repo_url, local_path],
                            check=True,
                            stdout=subprocess.PIPE,
                            stderr=subprocess.PIPE,
                            text=True
                        )
                        print(f"成功克隆仓库到: {local_path}")
                        break
                    except subprocess.CalledProcessError as e:
                        if "already exists and is not an empty directory" in e.stderr:
                            print(f"仓库已存在，跳过克隆: {local_path}")
                        else:
                            print(f"克隆仓库失败: {repo_url}")
                            print(f"错误信息: {e.stderr}")
                        retry_time += 1
                        if local_path.exists():
                            print(f"仓库已存在，清除仓库: {local_path}")
                            shutil.rmtree(local_path)
                    except Exception as e:
                        print(f"克隆仓库时发生未知错误: {repo_url}")
                        print(f"错误信息: {e}")
                        retry_time += 1
                        if local_path.exists():
                            print(f"仓库已存在，清除仓库: {local_path}")
                            shutil.rmtree(local_path)
                
                if local_path.exists():
                    repo_infos.append(repo_info)
                    with open(REPO_INFO_PATH, "w", encoding="utf-8") as f:
                        json.dump(repo_infos, f, indent=4, ensure_ascii=False)

                repo_count += 1
                print(f"已爬取 {repo_count} 个仓库")
                print("=" * 50)
                time.sleep(5)
                
            except Exception as e:
                print(f"处理仓库 {search_data['full_name']} 时发生错误: {e}")
                continue