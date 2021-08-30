pragma solidity >=0.4.0 <0.9.0;

contract License {
    struct Company {
        string nameCampany;
        uint256 phoneNumber;
        string email;
        string catogrical;
        // string gender;
        uint256 LicenseNo;
        string LicenseDate;
    }

    address[] public company;
    mapping(address => Company) companies;

    function addCompany(
        address _address,
        string memory _nameCampany,
        uint256 _phoneNumber,
        string memory _email,
        string memory _catogrical,
        // string memory _gender,
        uint256 _LicenseNo,
        string memory _LicenseDate
    ) public {
        companies[_address] = (
            Company(
                _nameCampany,
                _phoneNumber,
                _email,
                _catogrical,
                // _gender,
                _LicenseNo,
                _LicenseDate
            )
        );
        company.push(_address);
    }

    function getCompanyInfos(address _address)
        public
        view
        returns (
            string memory,
            uint256,
            string memory,
            string memory,
            // string memory,
            uint256,
            string memory
        )
    {
        string storage _nameCampany = companies[_address].nameCampany;
        uint256 _phone = companies[_address].phoneNumber;
        string memory _email = companies[_address].email;
        string memory _catogrical = companies[_address].catogrical;
        // string memory _gender = companies[_address].gender;
        uint256 _LicenseNo = companies[_address].LicenseNo;
        string memory _LicenseDate = companies[_address].LicenseDate;

        return (
            _nameCampany,
            _phone,
            _email,
            _catogrical,
            // _gender,
            _LicenseNo,
            _LicenseDate
        );
    }

    // --------- here get alert for License to end ---------
    // function isEndLicense() public {

    // }

    address public driverAddr;
    struct Driver {
        string nameDriver;
        string email;
        string catogrical;
        uint256 DrivingLinceseNo;
        string DrivingLinceseDate;
        uint256 BusModel;
    }

    address[] public driver;
    mapping(address => Driver) drivers;

    function addDriver(
        address _address,
        string memory _nameDriver,
        string memory _email,
        string memory _catogrical,
        uint256 _DrivingLinceseNo,
        string memory _DrivingLinceseDate,
        uint256 _BusModel
    ) public {
        drivers[_address] = (
            Driver(
                _nameDriver,
                _email,
                _catogrical,
                _DrivingLinceseNo,
                _DrivingLinceseDate,
                _BusModel
            )
        );
        company.push(_address);
    }

    function getDriverInfo(address _address)
        public
        view
        returns (
            string memory,
            string memory,
            string memory,
            uint256,
            string memory,
            uint256
        )
    {
        string memory _nameDriver = drivers[_address].nameDriver;
        string memory _email = drivers[_address].email;
        string memory _catogrical = drivers[_address].catogrical;
        uint256 _DrivingLinceseNo = drivers[_address].DrivingLinceseNo;
        string memory _DrivingLinceseDate = drivers[_address]
            .DrivingLinceseDate;
        uint256 _BusModel = drivers[_address].BusModel;

        return (
            _nameDriver,
            _email,
            _catogrical,
            _DrivingLinceseNo,
            _DrivingLinceseDate,
            _BusModel
        );
    }
}
