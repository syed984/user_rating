
# User Rating Smart Contract

## Overview

The User Rating smart contract is a simple Ethereum smart contract written in Solidity. It allows users to rate others on a scale from 1 to 5 and provides functionality to upgrade a rating if the new rating is higher. Additionally, it includes a function to check if a user has received a high rating.

## Contract Details

### Functions:

1. **`rateUser(uint _rating)`**

   - Allows users to rate others within the range of 1 to 5.
   - Uses `assert` to ensure that the provided rating is within the valid range.

2. **`upgrade_rating(uint _newRating)`**

   - Enables users to upgrade their rating if the new rating is higher than the current one.
   - Requires the new rating to be within the range of 1 to 5.
   - Uses `require` statements to validate the conditions.

3. **`checkHighRating() public view returns (string memory)`**

   - Checks if a user has received a high rating (4 or 5).
   - If the rating is below 4, it reverts with an error message.

### Variables:

- **`ratings`**: A private mapping that stores the ratings of users. The key is the user's Ethereum address (`address` type), and the value is their rating (`uint` type).

## Author

[Syed owaiz]

owaizsyed9866@gmail.com

## License

This smart contract is released under the MIT License. See the [LICENSE](LICENSE) file for more details.
