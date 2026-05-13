from collections import Counter

message = "OPEN"

freq = Counter(message)
total = len(message)

print("Character Probabilities:")
for char in freq:
    print(char, ":", freq[char] / total)

low = 0.0
high = 1.0

ranges = {}
start = 0.0

for char in freq:
    probability = freq[char] / total
    ranges[char] = (start, start + probability)
    start += probability

for char in message:
    r = high - low

    high = low + r * ranges[char][1]
    low = low + r * ranges[char][0]

tag = (low + high) / 2

print("\nEncoded Value:", tag)
