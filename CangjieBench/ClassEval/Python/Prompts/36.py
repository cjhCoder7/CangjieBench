from datetime import datetime

class EmailClient:
    """
    This is a class that serves as an email client, implementing functions such as checking emails, determining whether there is sufficient space, and cleaning up space
    """

    def __init__(self, addr, capacity) -> None:
        """
        Initializes the EmailClient class with the email address and the capacity of the email box.
        :param addr: The email address, str.
        :param capacity: The capacity of the email box, float.
        """
        self.addr = addr
        self.capacity = capacity
        self.inbox = []

    def send_to(self, recv, content, size):
        """
        Sends an email to the given email address.
        :param recv: The email address of the receiver, str.
        :param content: The content of the email, str.
        :param size: The size of the email, float.
        :return: True if the email is sent successfully, False if the receiver's email box is full.
        >>> sender = EmailClient('sender@example.com', 100)
        >>> receiver = EmailClient('receiver@example.com', 50)
        >>> sender.send_to(receiver, 'Hello', 10)
        True
        >>> receiver.inbox
        {'sender': 'sender@example.com', 'receiver': 'receiver@example.com', 'content': 'Hello', 'size': 10, 'time': '2023-07-13 11:36:40', 'state': 'unread'}

        """

    def fetch(self):
        """
        Retrieves the first unread email in the email box and marks it as read.
        :return: The first unread email in the email box, dict.
        >>> sender = EmailClient('sender@example.com', 100)
        >>> receiver = EmailClient('receiver@example.com', 50)
        >>> receiver.inbox = [{'sender': 'sender@example.com', 'receiver': 'receiver@example.com', 'content': 'Hello', 'size': 10, 'time': '2023-07-13 11:36:40', 'state': 'unread'}]
        >>> receiver.fetch()
        {'sender': 'sender@example.com', 'receiver': 'receiver@example.com', 'content': 'Hello', 'size': 10, 'time': '2023-07-13 11:36:40', 'state': 'read'}

        """

    def is_full_with_one_more_email(self, size):
        """
        Determines whether the email box is full after adding an email of the given size.
        :param size: The size of the email, float.
        :return: True if the email box is full, False otherwise.
        >>> sender = EmailClient('sender@example.com', 100)
        >>> receiver = EmailClient('receiver@example.com', 50)
        >>> receiver.is_full_with_one_more_email(10)
        False

        """

    def get_occupied_size(self):
        """
        Gets the total size of the emails in the email box.
        :return: The total size of the emails in the email box, float.
        >>> sender = EmailClient('sender@example.com', 100)
        >>> receiver = EmailClient('receiver@example.com', 50)
        >>> sender.inbox = [{'sender': 'sender@example.com', 'receiver': 'receiver@example.com', 'content': 'Hello', 'size': 10, 'time': datetime.now, 'state': 'unread'}]
        >>> sender.get_occupied_size()
        10

        """

    def clear_inbox(self, size):
        """
        Clears the email box by deleting the oldest emails until the email box has enough space to accommodate the given size.
        :param size: The size of the email, float.
        >>> sender = EmailClient('sender@example.com', 100)
        >>> receiver = EmailClient('receiver@example.com', 50)
        >>> receiver.inbox = [{'size': 10},{'size': 20},{'size': 15}]
        >>> receiver.clear_inbox(30)
        >>> receiver.inbox
        [{'size': 15}]

        """