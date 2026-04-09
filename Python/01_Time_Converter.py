# Convert minutes into hours and minutes format
def solution(minutes):
    hours = minutes // 60
    mins = minutes % 60
    if hours > 0:
        return f"{hours} hr{'s' if hours > 1 else ''} {mins} minutes"
    else:
        return f"{mins} minutes"
print(solution(130))   #Output: 2 hrs 10 minutes
print(solution(110))   #Output: 1 hr 50 minutes