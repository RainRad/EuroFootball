from datetime import datetime

def number_cleaner(string):
    string = string.lstrip("€")
    if "bn" in string:
        string = string.rstrip("\t")
        string = string.rstrip("bn")
        float_number = float(string)
        number = float_number *1_000_000_000
        output_number = int(number)
    elif "m" in string:
        string = string.rstrip("\t")
        string = string.rstrip("m")
        float_number = float(string)
        number = float_number *1_000_000
        output_number = int(number)
    elif "k" in string:
        string = string.rstrip("\t")
        string = string.rstrip("k")
        float_number = float(string)
        number = float_number *1_000
        output_number = int(number)
    else:
        output_number = 0
    return output_number

def output_only_digits(string):
    digits = ''.join(x for x in string if x.isdigit())
    return digits

def date_cleaner(string, start='', stop='('):
        date = string[string.index(start):string.index(stop)]
        date = date.rstrip()
        date = datetime.strptime(date, "%b %d, %Y").date()
        return date