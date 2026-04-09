# Remove duplicate characters from string
def solution(s):
    result = ""
    for ch in s:
        if ch not in result:
            result += ch
    return result
print(solution("programming"))   #Output: progamin