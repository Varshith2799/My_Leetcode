class Solution:
    def strStr(self, haystack: str, needle: str) -> int:
        n = len(haystack) - len(needle)
        if len(needle) <= len(haystack):
            for i in range(0,n+1):
                if haystack[i:i+len(needle)] == needle:
                    return i
        return -1
