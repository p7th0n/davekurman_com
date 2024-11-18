
# Linux script to run on hosting server
# Change ~/deploy directory to correct deploy location
# Resets permissions from Windows scp copy

chmod 755 $(find ~/davekurman.com -type d)
chmod 644 $(find ~/davekurman.com -type f)