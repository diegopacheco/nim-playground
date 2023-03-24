# public because of the *
proc sum*(a,b: int):int = 
    return a + b

# public because of the *
proc mul*(a,b: int):int = 
    return a * b

# Not public - cant be called outside of the file
proc sub(a,b: int):int = 
    return a - b

# Not public - cant be called outside of the file
proc divi(a,b: int):float = 
    return a / b