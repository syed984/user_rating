// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract userating {
    // Mapping to store user ratings
    mapping(address => uint) private ratings;

    // Function to rate with assert
    function rateUser(uint _rating) public {
        assert(_rating >= 1 && _rating <= 5);
        ratings[msg.sender] = _rating;
    }

    // Function to update rating if the new rating is higher
    function upgrade_rating(uint _newRating) public {
        uint currentRating = ratings[msg.sender];
        require(_newRating >= 1 && _newRating <= 5, "Invalid rating");
        require(_newRating > currentRating, "New rating must be higher");
        ratings[msg.sender] = _newRating;
    }

    function checkHighRating() public view returns (string memory) {
        uint rating = ratings[msg.sender];
        if (rating < 4) {
            revert("Low rating you need a minimum rating of 4 for a high rating");
        }
        return "High rating received";
    }
}
