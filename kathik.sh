import re

def check_password_strength(password):
    # Set criteria for each level
    length_criteria = len(password) >= 8
    lowercase_criteria = re.search(r"[a-z]", password) is not None
    uppercase_criteria = re.search(r"[A-Z]", password) is not None
    digit_criteria = re.search(r"\d", password) is not None
    special_char_criteria = re.search(r"[@$!%*?&]", password) is not None

    # Count the criteria met
    criteria_met = sum([length_criteria, lowercase_criteria, uppercase_criteria, digit_criteria, special_char_criteria])

    # Determine strength based on the criteria met
    if criteria_met == 5:
        return "Strong"
    elif 3 <= criteria_met < 5:
        return "Okay"
    else:
        return "Weak"

# Test the function
password = input("Enter a password to check its strength: ")
print(f"Password strength: {check_password_strength(password)}")
