class Solution:
    def searchRange(self, nums: List[int], target: int) -> List[int]:

        f = -1
        l = -1
        n = len(nums)
        k = enumerate(nums)
        c = 0
        for i,j in k:
            if j == target and c==0:
                f = i
                l = i
                c+=1
            elif j == target and c>0:
                l = i

        return [f,l]
