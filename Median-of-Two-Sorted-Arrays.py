class Solution:
    def findMedianSortedArrays(self, nums1: List[int], nums2: List[int]) -> float:
        k = nums1 + nums2
        l = len(k)
        k.sort()
        s = 0
        if len(k)%2 == 0:
            return (k[l//2-1] + k[l//2])/2
        return k[l//2]

        