import std.collection.*
import std.convert.*
import std.crypto.digest.Digest

/*
Md5 class is copied from https://gitcode.com/tlada/MD5-cj/blob/main/src/md5.cj
You can directly use it in your function
*/
public open class Md5 <: Digest {

    var A:UInt32 = 0x67452301;
    var B:UInt32 = 0xEFCDAB89;
    var C:UInt32 = 0x98BADCFE;
    var D:UInt32 = 0x10325476;

    private let T:Array<UInt32>=[
        0xd76aa478, 0xe8c7b756, 0x242070db, 0xc1bdceee,
        0xf57c0faf, 0x4787c62a, 0xa8304613, 0xfd469501,
        0x698098d8, 0x8b44f7af, 0xffff5bb1, 0x895cd7be,
        0x6b901122, 0xfd987193, 0xa679438e, 0x49b40821,
        0xf61e2562, 0xc040b340, 0x265e5a51, 0xe9b6c7aa,
        0xd62f105d, 0x02441453, 0xd8a1e681, 0xe7d3fbc8,
        0x21e1cde6, 0xc33707d6, 0xf4d50d87, 0x455a14ed,
        0xa9e3e905, 0xfcefa3f8, 0x676f02d9, 0x8d2a4c8a,
        0xfffa3942, 0x8771f681, 0x6d9d6122, 0xfde5380c,
        0xa4beea44, 0x4bdecfa9, 0xf6bb4b60, 0xbebfbc70,
        0x289b7ec6, 0xeaa127fa, 0xd4ef3085, 0x04881d05,
        0xd9d4d039, 0xe6db99e5, 0x1fa27cf8, 0xc4ac5665,
        0xf4292244, 0x432aff97, 0xab9423a7, 0xfc93a039,
        0x655b59c3, 0x8f0ccc92, 0xffeff47d, 0x85845dd1,
        0x6fa87e4f, 0xfe2ce6e0, 0xa3014314, 0x4e0811a1,
        0xf7537e82, 0xbd3af235, 0x2ad7d2bb, 0xeb86d391
    ]

    private let  S:Array<Int64> = [
        7, 12, 17, 22, 7, 12, 17, 22, 7, 12, 17, 22, 7, 12, 17, 22,
        5, 9, 14, 20, 5, 9, 14, 20, 5, 9, 14, 20, 5, 9, 14, 20,
        4, 11, 16, 23, 4, 11, 16, 23, 4, 11, 16, 23, 4, 11, 16, 23,
        6, 10, 15, 21, 6, 10, 15, 21, 6, 10, 15, 21, 6, 10, 15, 21
    ]

    private var residueBytes = ArrayList<UInt8>()
    private var calculatedBlocks: Int64 = 0
    private var finished = false
    private let maxByteSize = UInt64(1)<<56 //max limit for msg bytes size

    public prop algorithm: String{
        get(){"MD5"}
    }

    public prop blockSize: Int64{
        get(){64}
    }

    public prop size: Int64{
        get(){16}
    }

    public init() {
        A = 0x67452301;
        B = 0xEFCDAB89;
        C = 0x98BADCFE;
        D = 0x10325476;  
        
        calculatedBlocks = 0
        residueBytes.clear()
        finished = false        
    }

    public func reset(): Unit {
        A = 0x67452301;
        B = 0xEFCDAB89;
        C = 0x98BADCFE;
        D = 0x10325476;  
        
        calculatedBlocks = 0
        residueBytes.clear()
        finished = false            
    }

    public func finish(): Array<Byte>{
        if(this.finished){
            throw Exception("'finish()' was called. Please call 'reset()' firstly for a new round.")
        }
        let residueSize = this.residueBytes.size
        let km = (64-8-1+64-residueSize)%64 // bytes to pad 0
        var msgActualByteSize: UInt64 = UInt64(this.calculatedBlocks*64 + residueSize )
        
        var msgPadded = Array<UInt8>(residueSize + 1 + km + 8, repeat:0)
        for(j in 0 .. residueSize){            
            msgPadded[j] = this.residueBytes[j]
        }
        var pos = residueSize
        msgPadded[pos] = 0x80 //0b 1000 0000 
        pos += 1  
        for(j in 0 .. km){            
            msgPadded[pos+j] = 0
        }  
        pos += km        
        for(j in 0 .. 8){
            msgPadded[msgPadded.size - 8 + j] = UInt8((msgActualByteSize * 8) << (7-j)*8 >> 56)
        }

        compress(msgPadded)

        this.finished = true
        return this.getHashCodeArray() 
    }

    /*
    * The size of 'to' array should be 16.
    */
    public func finish(to!: Array<Byte>): Unit{
        if(to.size != 16) {
            throw Exception("The size of 'to' array should be 16.")
        }
        var rs = finish()
        for(j in 0 .. 16){
            to[j]= rs[j]
        }        
    }

    public func write(buffer: Array<Byte>): Unit{
        if(this.finished){
            throw Exception("'finish()' was called. Please call 'reset()' firstly for a new round.")
        }
        if(buffer.size == 0){
            return
        }
        //padding时，会在末尾填充比特串的bit数量，所以lengthInBytes*8后不能溢出       
        if(buffer.size >= Int64(this.maxByteSize)){            
            throw Exception("The size of the input array should be less than ${this.maxByteSize.format("#X")}.")
        }
        if(buffer.size + this.calculatedBlocks >= Int64(this.maxByteSize)){            
            throw Exception("The size of the input array should be less than ${this.maxByteSize.format("#X")}.")
        }

        let residue_old = this.residueBytes.size
        let bufferSize = buffer.size
        let blocks = (bufferSize + residue_old)/64
        let residue_new = (bufferSize + residue_old)%64
        let msgArray = Array<UInt8>(blocks*64,repeat:0)

        if(blocks == 0){
            for(j in buffer)
            {
                this.residueBytes.add(j)
            }
            return
        }
        
        for (j in 0 .. residue_old){
            msgArray[j] = this.residueBytes[j]
        }
        for (j in residue_old .. msgArray.size){
            msgArray[j] = buffer[j-residue_old]
        }
          
        this.residueBytes.clear()
        for (j in 0 .. residue_new){
            this.residueBytes.add( buffer[bufferSize - residue_new + j] )
        }
        
        this.calculatedBlocks += blocks
        compress(msgArray)                        
    }

    /*
    * msg will be transformed to array in utf-8
    */
    public func write(msg: String): Unit{
        write(msg.toArray());
    }

    private func compress(msgArray:Array<Byte>){
        for (i in 0 .. msgArray.size: 64)
        {
            var X = Array<UInt32>(16,{_=>0})
            for(m in 0 .. 16){
                X[m] =  UInt32(msgArray[i+m*4]) |
                        UInt32(msgArray[i+m*4+1])<<8 |
                        UInt32(msgArray[i+m*4+2])<<16 |
                        UInt32(msgArray[i+m*4+3])<<24                
            }
            
            var AA:UInt32 = A;
            var BB:UInt32 = B;
            var CC:UInt32 = C;
            var DD:UInt32 = D;

            for (j in 0 ..64){                
                var F:UInt32
                var g:UInt32
                if (j < 16)
                {
                    F = (BB & CC) | ((!BB) & DD);
                    g = UInt32(j);
                }
                else if (j < 32)
                {
                    F = (DD & BB) | ((!DD) & CC);
                    g = UInt32((5 * j + 1) % 16);
                }
                else if (j < 48)
                {
                    F = BB ^ CC ^ DD;
                    g = UInt32((3 * j + 5) % 16);
                }
                else
                {
                    F = CC ^ (BB | (!DD));
                    g = UInt32(7 * j % 16);
                }

                F = UInt32((UInt64(F) + UInt64(AA) + UInt64(X[Int64(g)]) + UInt64(T[j]))<<32>>32)
                AA = DD;
                DD = CC;
                CC = BB;
                BB = UInt32((UInt64(BB) + UInt64(rotateLeft(F, S[j])))<<32>>32);
            }

            A = UInt32((UInt64(A) + UInt64(AA))<<32>>32)
            B = UInt32((UInt64(B) + UInt64(BB))<<32>>32)
            C = UInt32((UInt64(C) + UInt64(CC))<<32>>32)
            D = UInt32((UInt64(D) + UInt64(DD))<<32>>32)
        }
    }
        
    private func rotateLeft(x:UInt32, n:Int64):UInt32
    {
        return (x << n) | (x >> (32 - n));
    }
    
    public func getHashCodeArray(): Array<UInt8>{
        if(this.finished==false) {
            throw Exception("Please call 'finish()' before getting the hashcode.")
        }
        
        var hashCodeArray = Array<Byte>(16,{_=>0});
        var rsArray = [A, B, C, D] 
        for(j in 0 .. 4){
            hashCodeArray[j*4]   =UInt8( rsArray[j]<<24>>24)
            hashCodeArray[j*4+1] =UInt8( rsArray[j]<<16>>24)
            hashCodeArray[j*4+2] =UInt8( rsArray[j]<<8 >>24)
            hashCodeArray[j*4+3] =UInt8( rsArray[j]<<0 >>24)
        }

        return hashCodeArray                
    }

    public func getHashCodeString(upperCase!:Bool = false ): String{
        var rs = this.getHashCodeArray()
        var sb = StringBuilder()
        var fmt = "02x"
        if(upperCase){
            fmt = "02X"
        }
        for(j in 0 .. rs.size){
            sb.append(rs[j].format(fmt))
        }
        sb.toString()
    }
}


func string_to_md5(text: String): Option<String> {
    /*
    Given a string 'text', return its md5 hash equivalent string.
    If 'text' is an empty string, return None.

    >>> string_to_md5('Hello world') == '3e25960a79dbc69b674cd4ec67a72c62'
    */
    if (text == "") {
        return None
    }
    let md5 = Md5()
    md5.write(text)
    md5.finish()
    return md5.getHashCodeString()
}
