// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.9.0;


contract BusesApp {
    // ---------register company----------------------------
    struct Company {
        string nameCampany;
        uint256 phoneNumber;
        string email;
        string catogrical;
        uint256 LicenseNo;
        uint256 LicenseDate;
    }
    address[] public company;
    mapping(address => Company) companies;
    event regcompny(
        string nameCampany,
        uint256 phoneNumber,
        string email,
        string catogrical,
        uint256 LicenseNo,
        uint256 LicenseDate
    );

    function addCompany(
        address _address,
        string memory _nameCampany,
        uint256 _phoneNumber,
        string memory _email,
        string memory _catogrical,
        uint256 _LicenseNo,
        uint256 _LicenseDate
    ) public {
        companies[_address] = (
            Company(
                _nameCampany,
                _phoneNumber,
                _email,
                _catogrical,
                _LicenseNo,
                _LicenseDate
            )
        );
        company.push(_address);
        emit regcompny(
            _nameCampany,
            _phoneNumber,
            _email,
            _catogrical,
            _LicenseNo,
            _LicenseDate
        );
    }

    function getCompanyInfos(address _address)
        public
        view
        returns (
            string memory,
            uint256,
            string memory,
            string memory,
            uint256
        )
    {
        string storage _nameCampany = companies[_address].nameCampany;
        uint256 _phone = companies[_address].phoneNumber;
        string memory _email = companies[_address].email;
        string memory _catogrical = companies[_address].catogrical;
        uint256 _LicenseDate = companies[_address].LicenseDate;

        return (_nameCampany, _phone, _email, _catogrical, _LicenseDate);
    }

    // --------- here get alert for License to end ---------
    function isEndLicense() public {}

    // --------- Here The current Bus locations -----------------------------------
    struct BusesLocation {
        string nameDriver;
        uint256 BusNumber;
        uint256 lotitude;
        uint256 longitude;
        string BusCatogrical;
        uint256 seatsNo;
    }

    address[] public location;
    mapping(address => BusesLocation) busesLocations;

    function BusNowLoction(
        address _address,
        string memory _nameDriver,
        uint256 _BusNumber,
        uint256 _longitude,
        uint256 _lotitude,
        string memory _BusCatogrical,
        uint256 _seatsNo
    ) public {
        busesLocations[_address] = (
            BusesLocation(
                _nameDriver,
                _BusNumber,
                _longitude,
                _lotitude,
                _BusCatogrical,
                _seatsNo
            )
        );
        location.push(_address);
    }

    function getInfromationToDriver(address _addressUser)
        public
        view
        returns (
            uint256 _RiderNumber,
            string memory _locationNow,
            string memory _locationTo,
            string memory _catogrcal,
            uint256 _timeOfDeparture
        )
    {
        _RiderNumber = info[_addressUser].RiderNumber;
        _locationNow = info[_addressUser].locationNow;
        _locationTo = info[_addressUser].locationTo;
        _catogrcal = info[_addressUser].catogrical;
        _timeOfDeparture = info[_addressUser].timeOfDeparture;

        return (
            _RiderNumber,
            _locationNow,
            _locationTo,
            _catogrcal,
            _timeOfDeparture
        );
    }

    //--------------------------- here for register users----------------------
    struct user1 {
        string name;
        string userName;
        string email;
        uint256 phoneNumber;
        string password;
        string gender;
    }

    address[] public User;
    mapping(address => user1) users;

    function addUser(
        address _address,
        string memory _name,
        string memory _userName,
        string memory _email,
        uint256 _phoneNumber,
        string memory password,
        string memory _gender
    ) public {
        users[_address] = (
            user1(_name, _userName, _email, _phoneNumber, password, _gender)
        );
        User.push(_address);
    }

    function getInfoUsers(address _address)
        public
        view
        returns (
            string memory _name,
            string memory _userName,
            string memory _email,
            uint256 _phoneNumber,
            string memory password,
            string memory _gender
        )
    {
        _name = users[_address].name;
        _userName = users[_address].userName;
        _email = users[_address].email;
        _phoneNumber = users[_address].phoneNumber;
        password = users[_address].password;
        _gender = users[_address].gender;
        return (_name, _userName, _email, _phoneNumber, password, _gender);
    }

    // ----------------------------------------------------------------------

    // here get buses location to User

    function getBusLocaationToUser(address _address)
        public
        view
        returns (
            string memory _nameDriver,
            uint256 _BusNumber,
            uint256 _longitude,
            uint256 _lotitude,
            string memory _BusCatogrical,
            uint256 _seatsNo
        )
    {
        _nameDriver = busesLocations[_address].nameDriver;
        _BusNumber = busesLocations[_address].BusNumber;
        _longitude = busesLocations[_address].longitude;
        _lotitude = busesLocations[_address].lotitude;
        _BusCatogrical = busesLocations[_address].BusCatogrical;
        _seatsNo = busesLocations[_address].seatsNo;
        return (
            _nameDriver,
            _BusNumber,
            _longitude,
            _lotitude,
            _BusCatogrical,
            _seatsNo
        );
    }

    //  Enter Information for Transfers and getting Infrormation Transfers like(time,destance,amount) from driverInfo contract-----------------------------------------

    uint256 public transfersNo;

    struct UserTransfers {
        string nameCompany;
        uint256 RiderNumber;
        string locationNow;
        string locationTo;
        string catogrical;
        uint256 timeOfDeparture;
    }

    address[] public trans;
    mapping(address => UserTransfers) info;

    function addInformation(
        address _address,
        string memory _nameCompany,
        uint256 _RiderNumber,
        string memory _locationNow,
        string memory _locationTo,
        string memory _catogrcal,
        uint256 _timeOfDeparture
    ) public {
        info[_address] = (
            UserTransfers(
                _nameCompany,
                _RiderNumber,
                _locationNow,
                _locationTo,
                _catogrcal,
                _timeOfDeparture
            )
        );
        trans.push(_address);
    }

    //payment
    address public driver;
    address public seller;
    uint256 public price;

    function MultiplyContract(
        address _driver,
        address _seller,
        uint256 _price
    ) public {
        driver = _driver;
        seller = _seller;
        price = _price;
    }
    //  function Execution (address _seller) public {
    //     _seller.send(price);
    // }
}

// contract EtherTransferTo {
//     function () external payable {
//     }

//     function getBalance() public returns (uint) {
//         return address(this).balance;
//     }
// }

// contract EtherTransferFrom {

//     EtherTransferTo private _instance;

//     constructor() public {
//         // _instance = EtherTransferTo(address(this));
//         _instance = new EtherTransferTo();
//     }

//     function getBalance() public returns (uint) {
//         return address(this).balance;
//     }

//     function getBalanceOfInstance() public returns (uint) {
//         //return address(_instance).balance;
//         return _instance.getBalance();
//     }

//     function () external payable {
//         //msg.sender.send(msg.value);
//         address(_instance).send(msg.value);
//     }
// }
