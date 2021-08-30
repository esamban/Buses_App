pragma solidity >=0.4.0 <0.9.0;

contract Price {
    uint256 public basePrice;
    uint256 public CostPerMminute;
    uint256 public timeOfTheRide;
    uint256 public CostPerMile;
    uint256 public RideDistance;
    uint256 public surgeBoostMultiplier;
    uint256 public bookingFee;
    uint256 public PassengersRideFare = 0;

    function setPrice(
        uint256 _basePrice,
        uint256 _CostPerMminute,
        uint256 _timeOfTheRide,
        uint256 _CostPerMile,
        uint256 _RideDistance,
        uint256 _surgeBoostMultiplier,
        uint256 _bookingFee
    ) public {
        basePrice = _basePrice;
        CostPerMminute = _CostPerMminute;
        timeOfTheRide = _timeOfTheRide;
        CostPerMile = _CostPerMile;
        RideDistance = _RideDistance;
        surgeBoostMultiplier = _surgeBoostMultiplier;
        bookingFee = _bookingFee;
        PassengersRideFare = (basePrice +
            ((CostPerMminute * timeOfTheRide) +
                (CostPerMile * RideDistance) *
                surgeBoostMultiplier) +
            bookingFee);
    }

    function getPrice() public view returns (uint256) {
        return (PassengersRideFare);
    }
}
