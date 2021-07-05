pragma solidity 0.6.12;

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.8.0;

library SafeMath {
    /**
     * @dev Returns the addition of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryAdd(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        uint256 c = a + b;
        if (c < a) return (false, 0);
        return (true, c);
    }

    /**
     * @dev Returns the substraction of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function trySub(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        if (b > a) return (false, 0);
        return (true, a - b);
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryMul(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
        // benefit is lost if 'b' is also tested.
        // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
        if (a == 0) return (true, 0);
        uint256 c = a * b;
        if (c / a != b) return (false, 0);
        return (true, c);
    }

    /**
     * @dev Returns the division of two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryDiv(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        if (b == 0) return (false, 0);
        return (true, a / b);
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryMod(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        if (b == 0) return (false, 0);
        return (true, a % b);
    }

    /**
     * @dev Returns the addition of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     *
     * - Addition cannot overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");
        return c;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b <= a, "SafeMath: subtraction overflow");
        return a - b;
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
     *
     * - Multiplication cannot overflow.
     */
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        if (a == 0) return 0;
        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");
        return c;
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b > 0, "SafeMath: division by zero");
        return a / b;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b > 0, "SafeMath: modulo by zero");
        return a % b;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting with custom message on
     * overflow (when the result is negative).
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {trySub}.
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        require(b <= a, errorMessage);
        return a - b;
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting with custom message on
     * division by zero. The result is rounded towards zero.
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {tryDiv}.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        require(b > 0, errorMessage);
        return a / b;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting with custom message when dividing by zero.
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {tryMod}.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        require(b > 0, errorMessage);
        return a % b;
    }
}

// File: @openzeppelin/contracts/utils/Context.sol

pragma solidity >=0.6.0 <0.8.0;

/*
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with GSN meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
    function _msgSender() internal view virtual returns (address payable) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes memory) {
        this; // silence state mutability warning without generating bytecode - see https://github.com/ethereum/solidity/issues/2691
        return msg.data;
    }
}

// File: @openzeppelin/contracts/access/Ownable.sol

pragma solidity >=0.6.0 <0.8.0;

/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * By default, the owner account will be the one that deploys the contract. This
 * can later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract Ownable is Context {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    constructor() internal {
        address msgSender = _msgSender();
        _owner = msgSender;
        emit OwnershipTransferred(address(0), msgSender);
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        require(owner() == _msgSender(), "Ownable: caller is not the owner");
        _;
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions anymore. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby removing any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        emit OwnershipTransferred(_owner, address(0));
        _owner = address(0);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        emit OwnershipTransferred(_owner, newOwner);
        _owner = newOwner;
    }
}

// File: @openzeppelin/contracts/utils/Pausable.sol

pragma solidity >=0.6.0 <0.8.0;

/**
 * @dev Contract module which allows children to implement an emergency stop
 * mechanism that can be triggered by an authorized account.
 *
 * This module is used through inheritance. It will make available the
 * modifiers `whenNotPaused` and `whenPaused`, which can be applied to
 * the functions of your contract. Note that they will not be pausable by
 * simply including this module, only once the modifiers are put in place.
 */
abstract contract Pausable is Context {
    /**
     * @dev Emitted when the pause is triggered by `account`.
     */
    event Paused(address account);

    /**
     * @dev Emitted when the pause is lifted by `account`.
     */
    event Unpaused(address account);

    bool private _paused;

    /**
     * @dev Initializes the contract in unpaused state.
     */
    constructor() internal {
        _paused = false;
    }

    /**
     * @dev Returns true if the contract is paused, and false otherwise.
     */
    function paused() public view virtual returns (bool) {
        return _paused;
    }

    /**
     * @dev Modifier to make a function callable only when the contract is not paused.
     *
     * Requirements:
     *
     * - The contract must not be paused.
     */
    modifier whenNotPaused() {
        require(!paused(), "Pausable: paused");
        _;
    }

    /**
     * @dev Modifier to make a function callable only when the contract is paused.
     *
     * Requirements:
     *
     * - The contract must be paused.
     */
    modifier whenPaused() {
        require(paused(), "Pausable: not paused");
        _;
    }

    /**
     * @dev Triggers stopped state.
     *
     * Requirements:
     *
     * - The contract must not be paused.
     */
    function _pause() internal virtual whenNotPaused {
        _paused = true;
        emit Paused(_msgSender());
    }

    /**
     * @dev Returns to normal state.
     *
     * Requirements:
     *
     * - The contract must be paused.
     */
    function _unpause() internal virtual whenPaused {
        _paused = false;
        emit Unpaused(_msgSender());
    }
}


/*
 * Support create multiple new game (utilized epoch?)
 * Support multiple oracle (UMA connection)
 */


interface UMAInterface {
    function getGameData(uint80 _gameId)
        external
        view
        returns (
            uint80 gameId,
            uint256 answer,
            uint256 startedAt, // block num
            uint256 updatedAt, // block num
            uint80 answeredInBlock
        );
}

contract UMAInterfaceMock is UMAInterface {
    mapping(uint80 => uint256) internal answers;

    function setGameData(uint80 _gameId, uint256 _answer) public {
        answers[_gameId] = _answer;
    }

    function getGameData(uint80 _gameId) external override view returns (uint80, uint256, uint256, uint256, uint80) {
        return(_gameId, answers[_gameId], 0, 0, 0);
    }
}

contract BinaryVolumeMaker is Ownable, Pausable {
    using SafeMath for uint256;

    struct Game {
        uint256 epoch; // namely the game_id
        uint256 startBlock;
        uint256 lockBlock;
        uint256 endBlock;
        uint256 totalAmount;
        uint256 bullAmount;
        uint256 bearAmount;
        uint256 rewardBaseCalAmount;
        uint256 rewardAmount;
        uint256 answer; // 0 pending, 1 succeed, 2 fail
        uint256 oracleId;
        bool oracleCalled;
    }

    enum Position {Bull, Bear}

    struct BetInfo {
        Position position;
        uint256 amount;
        bool claimed; // default false
    }

    mapping(uint256 => Game) public games;
    mapping(uint256 => mapping(address => BetInfo)) public ledger;
    mapping(address => uint256[]) public userGames;
    uint256 public currentEpoch;
    uint256 public intervalBlocks;
    uint256 public bufferBlocks;
    address public adminAddress;
    address public operatorAddress;
    
    uint256 public treasuryAmount;
    UMAInterface internal oracle;

    uint256 public constant TOTAL_RATE = 100; // 100%
    uint256 public rewardRate = 90; // 90%
    uint256 public treasuryRate = 10; // 10%
    uint256 public minBetAmount;
    uint256 public oracleUpdateAllowance; // seconds

    event StartGame(uint256 indexed epoch, uint256 blockNumber);
    event EndGame(uint256 indexed epoch, uint256 blockNumber, uint256 answer);
    event BetBull(address indexed sender, uint256 indexed currentEpoch, uint256 amount);
    event BetBear(address indexed sender, uint256 indexed currentEpoch, uint256 amount);
    event Claim(address indexed sender, uint256 indexed currentEpoch, uint256 amount);
    event ClaimTreasury(uint256 amount);
    event RatesUpdated(uint256 indexed epoch, uint256 rewardRate, uint256 treasuryRate);
    event MinBetAmountUpdated(uint256 indexed epoch, uint256 minBetAmount);
    event RewardsCalculated(
        uint256 indexed epoch,
        uint256 rewardBaseCalAmount,
        uint256 rewardAmount,
        uint256 treasuryAmount
    );

    constructor(
        // TODO(hortune): Disable default v3 interface 
        UMAInterface _oracle,
        address _adminAddress,
        address _operatorAddress,
        uint256 _intervalBlocks,
        uint256 _bufferBlocks,
        uint256 _minBetAmount,
        uint256 _oracleUpdateAllowance
    ) public {
        oracle = _oracle;
        adminAddress = _adminAddress;
        operatorAddress = _operatorAddress;
        intervalBlocks = _intervalBlocks;
        bufferBlocks = _bufferBlocks;
        minBetAmount = _minBetAmount;
        oracleUpdateAllowance = _oracleUpdateAllowance;
    }

    modifier onlyAdmin() {
        require(msg.sender == adminAddress, "admin: wut?");
        _;
    }

    modifier onlyOperator() {
        require(msg.sender == operatorAddress, "operator: wut?");
        _;
    }

    modifier onlyAdminOrOperator() {
        require(msg.sender == adminAddress || msg.sender == operatorAddress, "admin | operator: wut?");
        _;
    }

    modifier notContract() {
        require(!_isContract(msg.sender), "contract not allowed");
        require(msg.sender == tx.origin, "proxy contract not allowed");
        _;
    }

    /**
     * @dev set admin address
     * callable by owner
     */
    function setAdmin(address _adminAddress) external onlyOwner {
        require(_adminAddress != address(0), "Cannot be zero address");
        adminAddress = _adminAddress;
    }

    /**
     * @dev set operator address
     * callable by admin
     */
    function setOperator(address _operatorAddress) external onlyAdmin {
        require(_operatorAddress != address(0), "Cannot be zero address");
        operatorAddress = _operatorAddress;
    }

    /**
     * @dev set interval blocks
     * callable by admin
     */
    function setIntervalBlocks(uint256 _intervalBlocks) external onlyAdmin {
        intervalBlocks = _intervalBlocks;
    }

    /**
     * @dev set buffer blocks
     * callable by admin
     */
    function setBufferBlocks(uint256 _bufferBlocks) external onlyAdmin {
        require(_bufferBlocks <= intervalBlocks, "Cannot be more than intervalBlocks");
        bufferBlocks = _bufferBlocks;
    }

    /**
     * @dev set Oracle address
     * callable by admin
     */
    function setOracle(address _oracle) external onlyAdmin {
        require(_oracle != address(0), "Cannot be zero address");
        // TODO(hortune): Change oracle to UMA
        oracle = UMAInterface(_oracle);
    }

    /**
     * @dev set oracle update allowance
     * callable by admin
     */
    function setOracleUpdateAllowance(uint256 _oracleUpdateAllowance) external onlyAdmin {
        oracleUpdateAllowance = _oracleUpdateAllowance;
    }


    /**
     * @dev set minBetAmount
     * callable by admin
     */
    function setMinBetAmount(uint256 _minBetAmount) external onlyAdmin {
        minBetAmount = _minBetAmount;

        emit MinBetAmountUpdated(currentEpoch, minBetAmount);
    }

    /*
     * TODO(hortune) implement getGameStatus
     */
     
    
    /*
     *
     */
    function startGame(uint256 oracleId) external onlyOperator {
        _startGame(currentEpoch, oracleId);
        currentEpoch = currentEpoch + 1;
    }

    /**
     * @dev Start the next Game n, lock price for Game n-1, end Game n-2
     */
    function executeGame(uint80 gameId) external onlyOperator {
        // TODO(hortune): check game_id is valid

        uint256 currentAnswer = _getAnsFromOracle(gameId);
        if (currentAnswer != 0) {
            _safeEndGame(gameId, currentAnswer);
            _calculateRewards(gameId);
        }
    }

    /**
     * @dev Bet bear position
     */
    function betBear(uint256 gameId) external payable notContract {
        require(_bettable(gameId), "Game not bettable");
        require(msg.value >= minBetAmount, "Bet amount must be greater than minBetAmount");
        // TODO(hortune): bet once per Game is not suitable for us

        // Update Game data
        uint256 amount = msg.value;
        Game storage game = games[gameId];
        game.totalAmount = game.totalAmount.add(amount);
        game.bearAmount = game.bearAmount.add(amount);

        // Update user data
        BetInfo storage betInfo = ledger[gameId][msg.sender];
        betInfo.position = Position.Bear;
        betInfo.amount = amount;
        userGames[msg.sender].push(gameId);

        emit BetBear(msg.sender, gameId, amount);
    }

    /**
     * @dev Bet bull position
     */
    function betBull(uint256 gameId) external payable notContract {
        require(_bettable(gameId), "Game not bettable");
        require(msg.value >= minBetAmount, "Bet amount must be greater than minBetAmount");

        // Update Game data
        uint256 amount = msg.value;
        Game storage game = games[gameId];
        game.totalAmount = game.totalAmount.add(amount);
        game.bullAmount = game.bullAmount.add(amount);

        // Update user data
        BetInfo storage betInfo = ledger[gameId][msg.sender];
        betInfo.position = Position.Bull;
        betInfo.amount = amount;
        userGames[msg.sender].push(gameId);

        emit BetBull(msg.sender, gameId, amount);
    }

    /**
     * @dev Claim reward
     */
    function claim(uint256 epoch) external notContract {
        require(games[epoch].startBlock != 0, "Game has not started");
        require(block.number > games[epoch].endBlock, "Game has not ended");
        require(!ledger[epoch][msg.sender].claimed, "Rewards claimed");

        uint256 reward;
        // Game valid, claim rewards
        if (games[epoch].oracleCalled) {
            require(claimable(epoch, msg.sender), "Not eligible for claim");
            Game memory game = games[epoch];
            reward = ledger[epoch][msg.sender].amount.mul(game.rewardAmount).div(game.rewardBaseCalAmount);
            BetInfo storage betInfo = ledger[epoch][msg.sender];
            betInfo.claimed = true;
            _safeTransferETH(address(msg.sender), reward);
    
            emit Claim(msg.sender, epoch, reward);
        }
    }

    /**
     * @dev Claim all rewards in treasury
     * callable by admin
     */
    function claimTreasury() external onlyAdmin {
        uint256 currentTreasuryAmount = treasuryAmount;
        treasuryAmount = 0;
        _safeTransferETH(adminAddress, currentTreasuryAmount);

        emit ClaimTreasury(currentTreasuryAmount);
    }

    /**
     * @dev Return Game epochs that a user has participated
     */
    function getuserGames(
        address user,
        uint256 cursor,
        uint256 size
    ) external view returns (uint256[] memory, uint256) {
        uint256 length = size;
        if (length > userGames[user].length - cursor) {
            length = userGames[user].length - cursor;
        }

        uint256[] memory values = new uint256[](length);
        for (uint256 i = 0; i < length; i++) {
            values[i] = userGames[user][cursor + i];
        }

        return (values, cursor + length);
    }

    /**
     * @dev Get the claimable stats of specific epoch and user account
     */
    function claimable(uint256 epoch, address user) public view returns (bool) {
        BetInfo memory betInfo = ledger[epoch][user];
        Game memory game = games[epoch];
        return game.oracleCalled && game.answer != 0 && !betInfo.claimed;
    }

    /**
     * @dev Start Game
     * Previous Game n-2 must end
     */
    function _safeStartGame(uint256 epoch, uint256 oracleId) internal {
        _startGame(epoch, oracleId);
    }

    function _startGame(uint256 epoch, uint256 oracleId) internal {
        Game storage game = games[epoch];
        game.startBlock = block.number;
        game.lockBlock = block.number.add(intervalBlocks);
        game.endBlock = block.number.add(intervalBlocks * 2);
        game.epoch = epoch;
        game.totalAmount = 0;
        game.oracleId = oracleId;

        emit StartGame(epoch, block.number);
    }
    

    /**
     * @dev End Game
     */
    function _safeEndGame(uint256 epoch, uint256 answer) internal {
        require(games[epoch].lockBlock != 0, "Can only end Game after Game has locked");
        require(block.number >= games[epoch].endBlock, "Can only end Game after endBlock");
        // Remove bufferblock constraint
        // Prevent from UMA challenge too long
        // require(block.number <= games[epoch].endBlock.add(bufferBlocks), "Can only end Game within bufferBlocks");
        _endGame(epoch, answer);
    }

    function _endGame(uint256 epoch, uint256 answer) internal {
        Game storage game = games[epoch];
        game.answer = answer;
        game.oracleCalled = true;

        emit EndGame(epoch, block.number, game.answer);
    }

    /**
     * @dev Calculate rewards for Game
     */
    function _calculateRewards(uint256 epoch) internal {
        require(rewardRate.add(treasuryRate) == TOTAL_RATE, "rewardRate and treasuryRate must add up to TOTAL_RATE");
        require(games[epoch].rewardBaseCalAmount == 0 && games[epoch].rewardAmount == 0, "Rewards calculated");
        Game storage game = games[epoch];
        uint256 rewardBaseCalAmount;
        uint256 rewardAmount;
        uint256 treasuryAmt;
        // Bull wins
        if (game.answer == 1) {
            rewardBaseCalAmount = game.bullAmount;
            rewardAmount = game.totalAmount.mul(rewardRate).div(TOTAL_RATE);
            treasuryAmt = game.totalAmount.mul(treasuryRate).div(TOTAL_RATE);
        }
        // Bear wins
        else if (game.answer == 2) {
            rewardBaseCalAmount = game.bearAmount;
            rewardAmount = game.totalAmount.mul(rewardRate).div(TOTAL_RATE);
            treasuryAmt = game.totalAmount.mul(treasuryRate).div(TOTAL_RATE);
        }
        // House wins
        // hortune: this should not happen
        else {
            rewardBaseCalAmount = 0;
            rewardAmount = 0;
            treasuryAmt = game.totalAmount;
        }
        game.rewardBaseCalAmount = rewardBaseCalAmount;
        game.rewardAmount = rewardAmount;

        // Add to treasury
        treasuryAmount = treasuryAmount.add(treasuryAmt);

        emit RewardsCalculated(epoch, rewardBaseCalAmount, rewardAmount, treasuryAmt);
    }

    /**
     * @dev Get latest recorded price from oracle
     * If it falls below allowed buffer or has not updated, it would be invalid
     */
    function _getAnsFromOracle(uint80 gameId) internal view returns (uint256) {
        Game memory game = games[gameId];
        (, uint256 answer, , , ) = oracle.getGameData(uint80(game.oracleId));
        return answer;
    }

    function _safeTransferETH(address to, uint256 value) internal {
        (bool success, ) = to.call{gas: 23000, value: value}("");
        require(success, "TransferHelper: ETH_TRANSFER_FAILED");
    }

    function _isContract(address addr) internal view returns (bool) {
        uint256 size;
        assembly {
            size := extcodesize(addr)
        }
        return size > 0;
    }

    /**
     * @dev Determine if a Game is valid for receiving bets
     * Game must have started and locked
     * Current block must be within startBlock and endBlock
     */
    function _bettable(uint256 epoch) internal view returns (bool) {
        return
            games[epoch].startBlock != 0 &&
            games[epoch].lockBlock != 0 &&
            block.number > games[epoch].startBlock &&
            block.number < games[epoch].lockBlock;
    }
}
