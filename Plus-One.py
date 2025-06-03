class Solution:
    def plusOne(self, digits: List[int]) -> List[int]:
        k = \\.join(map(str, digits))
        l = int(k) +1
        j = []
        while l > 0:
            j.append(l%10)
            l = l//10
        return j[::-1]

