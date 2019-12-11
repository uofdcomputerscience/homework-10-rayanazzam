import Foundation

// Implement an Error type. Make sure it has at least two values.


// Implement a function that returns a Result of string or your error type


// Call your function in a way that will return an error result, and handle that error.


// Call your function in a way that will return a success result, and handle the value.

enum LogInCredentialError: Error {
    case inputIsTooShort
    case inputIsTooLong
    case inputHasIllegalCharacters
}

func validateInput(value: String) -> Result<String, Error> {
    if (value.count > 3) {
        return .success("success!")
    }
    return .failure(LogInCredentialError.inputIsTooShort)
}

let result = validateInput(value: "abcd")
//let result = validateInput(value: "ab")

switch result {
    
case .success(let string):
    print("string: \(string)")
case .failure(let error):
    print(error)
}
