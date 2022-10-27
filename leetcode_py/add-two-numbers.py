from typing import Optional


# Definition for singly-linked list.
class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next


class Solution:
    def listNodeToList(self, ln: ListNode) -> list:
        list = []
        while (ln != None):
            list.insert(0,ln.val)
            ln = ln.next
        return list

    def listToListNode(self, l: list) -> ListNode:
        ln = None
        while (len(l) > 0):
            ln = ListNode(l[0], ln)
            l.pop(0)
        return ln

    def listToNumber(self, l: list) -> int:
        return int(''.join(map(str, l)))

    def numberToList(self, n: int) -> list:
        return [int(x) for x in str(n)]

    def addTwoNumbers(self, l1: Optional[ListNode], l2: Optional[ListNode]) -> Optional[ListNode]:
        l1 = self.listNodeToList(l1)
        l2 = self.listNodeToList(l2)
        l1L = self.listToNumber(l1)
        l2L = self.listToNumber(l2)
        sum2list = self.numberToList(l1L+l2L)
        return self.listToListNode(sum2list)