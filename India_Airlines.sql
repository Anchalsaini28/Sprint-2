CREATE database Indianairlines;
 
use Indianairlines;


CREATE TABLE flightdetails (
    record_id INT PRIMARY KEY,
    airline VARCHAR(50),
    flight VARCHAR(50),
    source_city VARCHAR(50),
    departure_time VARCHAR(50),
    stops VARCHAR(50),
    arrival_time VARCHAR(50),
    destination_city VARCHAR(50),
    class VARCHAR(50),
    duration DECIMAL(5, 2),
    days_left INT,
    price INT
);


INSERT INTO flightdetails (record_id, airline, flight, source_city, departure_time, stops, arrival_time, destination_city, class, duration, days_left, price) VALUES
(1, 'SpiceJet', 'SG-191', 'Delhi', 'Early_Morning', 'zero', 'Morning', 'Bangalore', 'Economy', 2.5, 1, 7425),
(2, 'Air_India', 'AI-402', 'Kolkata', 'Morning', 'one', 'Night', 'Mumbai', 'Economy', 37, 49, 7207),
(3, 'AirAsia', 'I5-749', 'Bangalore', 'Night', 'zero', 'Late_Night', 'Delhi', 'Economy', 2.92, 1, 8745),
(4, 'Air_India', 'AI-501', 'Bangalore', 'Afternoon', 'one', 'Morning', 'Kolkata', 'Economy', 19.67, 1, 13474),
(5, 'Indigo', '6E-6201', 'Mumbai', 'Morning', 'zero', 'Morning', 'Delhi', 'Economy', 1.92, 1, 10983),
(6, 'Indigo', '6E-841', 'Bangalore', 'Afternoon', 'zero', 'Afternoon', 'Chennai', 'Economy', 1.08, 1, 7016),
(7, 'Vistara', 'UK-706', 'Kolkata', 'Morning', 'one', 'Night', 'Mumbai', 'Economy', 10.5, 49, 9807),
(8, 'Air_India', 'AI-503', 'Bangalore', 'Evening', 'one', 'Morning', 'Mumbai', 'Economy', 16.33, 49, 6578),
(9, 'Vistara', 'UK-993', 'Delhi', 'Afternoon', 'one', 'Night', 'Chennai', 'Economy', 10.25, 48, 4979),
(10, 'Vistara', 'UK-755', 'Bangalore', 'Morning', 'two_or_more', 'Morning', 'Hyderabad', 'Economy', 23, 49, 8934),
(11, 'Vistara', 'UK-945', 'Delhi', 'Morning', 'one', 'Night', 'Chennai', 'Economy', 11.42, 48, 4979),
(12, 'Vistara', 'UK-706', 'Kolkata', 'Morning', 'one', 'Night', 'Mumbai', 'Economy', 11.33, 49, 12125),
(13, 'Indigo', '6E-2034', 'Bangalore', 'Evening', 'zero', 'Night', 'Delhi', 'Economy', 2.92, 1, 7488),
(14, 'Air_India', 'AI-640', 'Bangalore', 'Early_Morning', 'one', 'Evening', 'Delhi', 'Economy', 12.58, 1, 10744),
(15, 'Vistara', 'UK-945', 'Delhi', 'Morning', 'zero', 'Afternoon', 'Mumbai', 'Economy', 2.33, 1, 5955),
(16, 'Indigo', '6.00E-201', 'Bangalore', 'Evening', 'zero', 'Night', 'Kolkata', 'Economy', 2.67, 1, 14313),
(17, 'Air_India', 'AI-505', 'Bangalore', 'Morning', 'one', 'Evening', 'Hyderabad', 'Economy', 31.17, 49, 10090),
(18, 'Indigo', '6E-2514', 'Bangalore', 'Evening', 'zero', 'Evening', 'Delhi', 'Economy', 2.83, 1, 7488),
(19, 'Air_India', 'AI-804', 'Bangalore', 'Early_Morning', 'zero', 'Morning', 'Delhi', 'Economy', 2.75, 1, 7909),
(20, 'GO_FIRST', 'G8-103', 'Delhi', 'Evening', 'one', 'Morning', 'Hyderabad', 'Economy', 14.42, 1, 11415),
(21, 'Indigo', '6E-5217', 'Mumbai', 'Evening', 'zero', 'Evening', 'Hyderabad', 'Economy', 1.33, 1, 4946),
(22, 'Air_India', 'AI-442', 'Mumbai', 'Afternoon', 'one', 'Evening', 'Delhi', 'Economy', 3.75, 1, 5943),
(23, 'Vistara', 'UK-944', 'Mumbai', 'Afternoon', 'zero', 'Evening', 'Delhi', 'Economy', 2.25, 1, 7518),
(24, 'Air_India', 'AI-503', 'Bangalore', 'Evening', 'one', 'Morning', 'Hyderabad', 'Economy', 18.08, 49, 6620),
(25, 'Indigo', '6E-943', 'Delhi', 'Afternoon', 'one', 'Evening', 'Chennai', 'Economy', 5.33, 48, 4729),
(26, 'Vistara', 'UK-902', 'Mumbai', 'Afternoon', 'one', 'Night', 'Bangalore', 'Economy', 7.58, 5, 11129),
(27, 'Air_India', 'AI-660', 'Mumbai', 'Evening', 'one', 'Afternoon', 'Bangalore', 'Economy', 18.5, 5, 9201),
(28, 'Indigo', '6E-6172', 'Kolkata', 'Night', 'one', 'Morning', 'Bangalore', 'Economy', 11.25, 1, 9907),
(29, 'Indigo', '6E-566', 'Kolkata', 'Night', 'one', 'Morning', 'Bangalore', 'Economy', 11.42, 1, 6489),
(30, 'Indigo', '6E-5208', 'Mumbai', 'Evening', 'zero', 'Evening', 'Hyderabad', 'Economy', 1.42, 1, 4841),
(31, 'Vistara', 'UK-816', 'Bangalore', 'Morning', 'one', 'Morning', 'Chennai', 'Economy', 22.42, 1, 15667),
(32, 'Air_India', 'AI-523', 'Bangalore', 'Early_Morning', 'one', 'Night', 'Delhi', 'Economy', 14.83, 1, 9012),
(33, 'AirAsia', 'I5-2392', 'Bangalore', 'Morning', 'one', 'Evening', 'Delhi', 'Economy', 6.58, 1, 10733),
(34, 'Vistara', 'UK-981', 'Delhi', 'Night', 'one', 'Morning', 'Chennai', 'Economy', 11.17, 48, 4979),
(35, 'Air_India', 'AI-687', 'Mumbai', 'Afternoon', 'one', 'Afternoon', 'Bangalore', 'Economy', 20.5, 5, 9201),
(36, 'Air_India', 'AI-503', 'Bangalore', 'Evening', 'one', 'Morning', 'Kolkata', 'Economy', 15.17, 1, 13474),
(37, 'Indigo', '6E-416', 'Mumbai', 'Evening', 'zero', 'Evening', 'Delhi', 'Economy', 2.08, 1, 6363),
(38, 'Air_India', 'AI-660', 'Mumbai', 'Evening', 'one', 'Evening', 'Bangalore', 'Economy', 22.25, 5, 9201),
(39, 'Vistara', 'UK-816', 'Bangalore', 'Morning', 'one', 'Night', 'Mumbai', 'Economy', 9.75, 49, 7212),
(40, 'Vistara', 'UK-814', 'Bangalore', 'Night', 'one', 'Morning', 'Mumbai', 'Economy', 14, 49, 7212),
(41, 'Air_India', 'AI-506', 'Delhi', 'Morning', 'one', 'Early_Morning', 'Hyderabad', 'Economy', 22.08, 1, 11310),
(42, 'Indigo', '6E-353', 'Delhi', 'Early_Morning', 'zero', 'Morning', 'Kolkata', 'Economy', 2.25, 1, 5955),
(43, 'GO_FIRST', 'G8-392', 'Delhi', 'Afternoon', 'one', 'Early_Morning', 'Kolkata', 'Economy', 16, 1, 5954),
(44, 'GO_FIRST', 'G8-390', 'Mumbai', 'Early_Morning', 'one', 'Afternoon', 'Hyderabad', 'Economy', 9.67, 3, 4262),
(45, 'Vistara', 'UK-996', 'Mumbai', 'Evening', 'zero', 'Night', 'Delhi', 'Economy', 2.17, 1, 9618),
(46, 'Indigo', '6E-841', 'Bangalore', 'Afternoon', 'one', 'Evening', 'Kolkata', 'Economy', 5.17, 1, 11793),
(47, 'GO_FIRST', 'G8-873', 'Bangalore', 'Morning', 'one', 'Night', 'Hyderabad', 'Economy', 10.83, 49, 7919),
(48, 'Vistara', 'UK-816', 'Bangalore', 'Morning', 'one', 'Night', 'Chennai', 'Economy', 11.25, 1, 15667),
(49, 'Vistara', 'UK-954', 'Mumbai', 'Early_Morning', 'one', 'Morning', 'Bangalore', 'Economy', 5.83, 5, 11129),
(50, 'Indigo', '6E-841', 'Bangalore', 'Afternoon', 'one', 'Night', 'Kolkata', 'Economy', 7.17, 1, 11793),
(51, 'Air_India', 'AI-768', 'Kolkata', 'Afternoon', 'one', 'Night', 'Mumbai', 'Economy', 32.17, 49, 9359),
(52, 'Air_India', 'AI-505', 'Bangalore', 'Morning', 'one', 'Morning', 'Mumbai', 'Economy', 23.75, 49, 6578),
(53, 'Vistara', 'UK-902', 'Mumbai', 'Afternoon', 'one', 'Night', 'Bangalore', 'Economy', 6.92, 5, 11129),
(54, 'Vistara', 'UK-927', 'Delhi', 'Morning', 'zero', 'Morning', 'Mumbai', 'Economy', 2.08, 1, 6060),
(55, 'Indigo', '6E-354', 'Mumbai', 'Afternoon', 'zero', 'Afternoon', 'Hyderabad', 'Economy', 1.33, 3, 4263),
(56, 'Vistara', 'UK-706', 'Kolkata', 'Morning', 'one', 'Night', 'Mumbai', 'Economy', 11.33, 49, 7992),
(57, 'AirAsia', 'I5-991', 'Kolkata', 'Evening', 'zero', 'Evening', 'Bangalore', 'Economy', 2.83, 1, 13047),
(58, 'SpiceJet', 'SG-406', 'Kolkata', 'Night', 'zero', 'Night', 'Bangalore', 'Economy', 2.67, 1, 6488),
(59, 'GO_FIRST', 'G8-336', 'Delhi', 'Afternoon', 'one', 'Early_Morning', 'Kolkata', 'Economy', 16.67, 1, 5954),
(60, 'Indigo', '6E-5332', 'Mumbai', 'Early_Morning', 'one', 'Afternoon', 'Bangalore', 'Economy', 6.92, 5, 9671),
(61, 'Air_India', 'AI-505', 'Bangalore', 'Morning', 'zero', 'Afternoon', 'Delhi', 'Economy', 2.58, 1, 7489),
(62, 'Vistara', 'UK-820', 'Bangalore', 'Evening', 'zero', 'Night', 'Delhi', 'Economy', 2.67, 1, 7489),
(63, 'Air_India', 'AI-501', 'Bangalore', 'Afternoon', 'one', 'Night', 'Chennai', 'Economy', 10.25, 1, 14524),
(64, 'Indigo', '6E-654', 'Delhi', 'Evening', 'zero', 'Night', 'Bangalore', 'Economy', 2.92, 1, 7425),
(65, 'GO_FIRST', 'G8-374', 'Bangalore', 'Early_Morning', 'one', 'Night', 'Mumbai', 'Economy', 16.25, 49, 6787),
(66, 'Indigo', '6E-6139', 'Bangalore', 'Afternoon', 'zero', 'Evening', 'Delhi', 'Economy', 2.75, 1, 7488),
(67, 'Vistara', 'UK-813', 'Delhi', 'Evening', 'zero', 'Night', 'Bangalore', 'Economy', 2.83, 1, 7425),
(68, 'AirAsia', 'I5-1529', 'Delhi', 'Morning', 'zero', 'Afternoon', 'Bangalore', 'Economy', 2.83, 1, 7426),
(69, 'Vistara', 'UK-852', 'Mumbai', 'Afternoon', 'two_or_more', 'Night', 'Kolkata', 'Economy', 10.58, 49, 9506),
(70, 'Air_India', 'AI-483', 'Delhi', 'Evening', 'one', 'Evening', 'Hyderabad', 'Economy', 25.08, 1, 12688),
(71, 'Indigo', '6E-2026', 'Delhi', 'Morning', 'zero', 'Morning', 'Bangalore', 'Economy', 2.92, 1, 7425),
(72, 'Air_India', 'AI-867', 'Mumbai', 'Night', 'one', 'Morning', 'Hyderabad', 'Economy', 13, 1, 7584),
(73, 'Vistara', 'UK-706', 'Kolkata', 'Morning', 'one', 'Evening', 'Mumbai', 'Economy', 8.08, 49, 8579),
(74, 'Vistara', 'UK-940', 'Mumbai', 'Evening', 'zero', 'Night', 'Delhi', 'Economy', 2.17, 1, 7518),
(75, 'Air_India', 'AI-867', 'Mumbai', 'Night', 'one', 'Morning', 'Hyderabad', 'Economy', 14.42, 1, 7584),
(76, 'Vistara', 'UK-871', 'Delhi', 'Night', 'zero', 'Night', 'Hyderabad', 'Business', 2.33, 1, 30630),
(77, 'Vistara', 'UK-822', 'Chennai', 'Morning', 'one', 'Night', 'Delhi', 'Business', 10.92, 27, 68112),
(78, 'Vistara', 'UK-870', 'Hyderabad', 'Night', 'one', 'Afternoon', 'Mumbai', 'Business', 16, 21, 64890),
(79, 'Vistara', 'UK-838', 'Chennai', 'Night', 'one', 'Morning', 'Kolkata', 'Business', 11.5, 3, 102832),
(80, 'Air_India', 'AI-840', 'Hyderabad', 'Night', 'one', 'Night', 'Kolkata', 'Business', 25.5, 7, 51707),
(81, 'Vistara', 'UK-834', 'Chennai', 'Evening', 'one', 'Evening', 'Kolkata', 'Business', 24.92, 4, 55377),
(82, 'Vistara', 'UK-828', 'Chennai', 'Early_Morning', 'one', 'Afternoon', 'Delhi', 'Business', 8.67, 27, 64729),
(83, 'Vistara', 'UK-776', 'Kolkata', 'Evening', 'one', 'Morning', 'Delhi', 'Business', 15, 4, 61583),
(84, 'Air_India', 'AI-672', 'Chennai', 'Afternoon', 'one', 'Night', 'Delhi', 'Business', 5.5, 4, 45185),
(85, 'Air_India', 'AI-440', 'Chennai', 'Early_Morning', 'zero', 'Morning', 'Delhi', 'Business', 2.67, 4, 27792),
(86, 'Vistara', 'UK-850', 'Bangalore', 'Evening', 'one', 'Morning', 'Delhi', 'Business', 13.17, 1, 61897),
(87, 'Vistara', 'UK-955', 'Delhi', 'Evening', 'one', 'Night', 'Hyderabad', 'Business', 27.17, 1, 63513),
(88, 'Vistara', 'UK-836', 'Chennai', 'Morning', 'one', 'Night', 'Mumbai', 'Business', 9.33, 11, 64113),
(89, 'Vistara', 'UK-775', 'Mumbai', 'Afternoon', 'zero', 'Evening', 'Kolkata', 'Business', 2.83, 32, 31436),
(90, 'Vistara', 'UK-986', 'Mumbai', 'Night', 'one', 'Morning', 'Kolkata', 'Business', 10.83, 32, 49725),
(91, 'Air_India', 'AI-888', 'Mumbai', 'Evening', 'one', 'Evening', 'Hyderabad', 'Business', 24.33, 1, 50810),
(92, 'Vistara', 'UK-930', 'Mumbai', 'Early_Morning', 'one', 'Night', 'Chennai', 'Business', 15.25, 49, 64173),
(93, 'Air_India', 'AI-538', 'Chennai', 'Night', 'zero', 'Night', 'Delhi', 'Business', 2.83, 4, 27792),
(94, 'Air_India', 'AI-768', 'Kolkata', 'Afternoon', 'one', 'Night', 'Mumbai', 'Business', 5.75, 32, 50271),
(95, 'Vistara', 'UK-890', 'Hyderabad', 'Evening', 'one', 'Morning', 'Chennai', 'Business', 16.25, 2, 70154),
(96, 'Vistara', 'UK-808', 'Bangalore', 'Early_Morning', 'zero', 'Morning', 'Delhi', 'Business', 2.67, 2, 34043),
(97, 'Vistara', 'UK-985', 'Delhi', 'Evening', 'one', 'Afternoon', 'Hyderabad', 'Business', 16.42, 1, 71364),
(98, 'Vistara', 'UK-890', 'Hyderabad', 'Evening', 'one', 'Night', 'Chennai', 'Business', 29.08, 2, 70154),
(99, 'Vistara', 'UK-880', 'Hyderabad', 'Afternoon', 'one', 'Evening', 'Kolkata', 'Business', 6.17, 7, 53499),
(100, 'Vistara', 'UK-772', 'Kolkata', 'Morning', 'one', 'Night', 'Delhi', 'Business', 10.25, 4, 68303);

Query OK, 100 rows affected (0.02 sec)
Records: 100  Duplicates: 0  Warnings: 0


mysql> select * from flightdetails;
+-----------+-----------+-----------+-------------+----------------+-------------+---------------+------------------+----------+----------+-----------+--------+
| Record_ID | Airline   | Flight    | Source_City | Departure_Time | Stops       | Arrival_Time  | Destination_City | Class    | Duration | Days_Left | Price  |
+-----------+-----------+-----------+-------------+----------------+-------------+---------------+------------------+----------+----------+-----------+--------+
|         1 | SpiceJet  | SG-191    | Delhi       | Early_Morning  | zero        | Morning       | Bangalore        | Economy  |     2.50 |         1 |   7425 |
|         2 | Air_India | AI-402    | Kolkata     | Morning        | one         | Night         | Mumbai           | Economy  |    37.00 |        49 |   7207 |
|         3 | AirAsia   | I5-749    | Bangalore   | Night          | zero        | Late_Night    | Delhi            | Economy  |     2.92 |         1 |   8745 |
|         4 | Air_India | AI-501    | Bangalore   | Afternoon      | one         | Morning       | Kolkata          | Economy  |    19.67 |         1 |  13474 |
|         5 | Indigo    | 6E-6201   | Mumbai      | Morning        | zero        | Morning       | Delhi            | Economy  |     1.92 |         1 |  10983 |
|         6 | Indigo    | 6E-841    | Bangalore   | Afternoon      | zero        | Afternoon     | Chennai          | Economy  |     1.08 |         1 |   7016 |
|         7 | Vistara   | UK-706    | Kolkata     | Morning        | one         | Night         | Mumbai           | Economy  |    10.50 |        49 |   9807 |
|         8 | Air_India | AI-503    | Bangalore   | Evening        | one         | Morning       | Mumbai           | Economy  |    16.33 |        49 |   6578 |
|         9 | Vistara   | UK-993    | Delhi       | Afternoon      | one         | Night         | Chennai          | Economy  |    10.25 |        48 |   4979 |
|        10 | Vistara   | UK-755    | Bangalore   | Morning        | two_or_more | Morning       | Hyderabad        | Economy  |    23.00 |        49 |   8934 |
|        11 | Vistara   | UK-945    | Delhi       | Morning        | one         | Night         | Chennai          | Economy  |    11.42 |        48 |   4979 |
|        12 | Vistara   | UK-706    | Kolkata     | Morning        | one         | Night         | Mumbai           | Economy  |    11.33 |        49 |  12125 |
|        13 | Indigo    | 6E-2034   | Bangalore   | Evening        | zero        | Night         | Delhi            | Economy  |     2.92 |         1 |   7488 |
|        14 | Air_India | AI-640    | Bangalore   | Early_Morning  | one         | Evening       | Delhi            | Economy  |    12.58 |         1 |  10744 |
|        15 | Vistara   | UK-945    | Delhi       | Morning        | zero        | Afternoon     | Mumbai           | Economy  |     2.33 |         1 |   5955 |
|        16 | Indigo    | 6.00E-201 | Bangalore   | Evening        | zero        | Night         | Kolkata          | Economy  |     2.67 |         1 |  14313 |
|        17 | Air_India | AI-505    | Bangalore   | Morning        | one         | Evening       | Hyderabad        | Economy  |    31.17 |        49 |  10090 |
|        18 | Indigo    | 6E-2514   | Bangalore   | Evening        | zero        | Evening       | Delhi            | Economy  |     2.83 |         1 |   7488 |
|        19 | Air_India | AI-804    | Bangalore   | Early_Morning  | zero        | Morning       | Delhi            | Economy  |     2.75 |         1 |   7909 |
|        20 | GO_FIRST  | G8-103    | Delhi       | Evening        | one         | Morning       | Hyderabad        | Economy  |    14.42 |         1 |  11415 |
|        21 | Indigo    | 6E-5217   | Mumbai      | Evening        | zero        | Evening       | Hyderabad        | Economy  |     1.33 |         1 |   4946 |
|        22 | Air_India | AI-442    | Mumbai      | Afternoon      | one         | Evening       | Delhi            | Economy  |     3.75 |         1 |   5943 |
|        23 | Vistara   | UK-944    | Mumbai      | Afternoon      | zero        | Evening       | Delhi            | Economy  |     2.25 |         1 |   7518 |
|        24 | Air_India | AI-503    | Bangalore   | Evening        | one         | Morning       | Hyderabad        | Economy  |    18.08 |        49 |   6620 |
|        25 | Indigo    | 6E-943    | Delhi       | Afternoon      | one         | Evening       | Chennai          | Economy  |     5.33 |        48 |   4729 |
|        26 | Vistara   | UK-902    | Mumbai      | Afternoon      | one
     | Night         | Bangalore        | Economy  |     7.58 |         5 |  11129 |
|        27 | Air_India | AI-660    | Mumbai      | Evening        | one         | Afternoon     | Bangalore        | Economy  |    18.50 |         5 |   9201 |
|        28 | Indigo    | 6E-6172   | Kolkata     | Night          | one         | Morning       | Bangalore        | Economy  |    11.25 |         1 |   9907 |
|        29 | Indigo    | 6E-566    | Kolkata     | Night          | one         | Morning       | Bangalore        | Economy  |    11.42 |         1 |   6489 |
|        30 | Indigo    | 6E-5208   | Mumbai      | Evening        | zero        | Evening       | Hyderabad        | Economy  |     1.42 |         1 |   4841 |
|        31 | Vistara   | UK-816    | Bangalore   | Morning        | one         | Morning       | Chennai          | Economy  |    22.42 |         1 |  15667 |
|        32 | Air_India | AI-523    | Bangalore   | Early_Morning  | one         | Night         | Delhi            | Economy  |    14.83 |         1 |
  9012 |
|        33 | AirAsia   | I5-2392   | Bangalore   | Morning        | one         | Evening       | Delhi            | Economy  |     6.58 |         1 |  10733 |
|        34 | Vistara   | UK-981    | Delhi       | Night          | one         | Morning       | Chennai          | Economy  |    11.17 |        48 |   4979 |
|        35 | Air_India | AI-687    | Mumbai      | Afternoon      | one         | Afternoon     | Bangalore        | Economy  |    20.50 |         5 |   9201 |
|        36 | Air_India | AI-503    | Bangalore   | Evening        | one         | Morning       | Kolkata          | Economy  |    15.17 |         1 |  13474 |
|        37 | Indigo    | 6E-416    | Mumbai      | Evening        | zero        | Evening       | Delhi            | Economy  |     2.08 |         1 |   6363 |
|        38 | Air_India | AI-660    | Mumbai      | Evening        | one         | Evening       | Bangalore        | Economy  |    22.25 |         5 |   9201 |
|        39 | Vistara   | UK-816    | Bangalore   | Morning        | one         | Night         | Mumbai           | Economy  |     9.75 |        49 |   7212 |
|        40 | Vistara   | UK-814    | Bangalore   | Night          | one         | Morning       | Mumbai           | Economy  |    14.00 |        49 |   7212 |
|        41 | Air_India | AI-506    | Delhi       | Morning        | one         | Early_Morning | Hyderabad        | Economy  |    22.08 |         1 |  11310 |
|        42 | Indigo    | 6E-353    | Delhi       | Early_Morning  | zero        | Morning       | Kolkata          | Economy  |     2.25 |         1 |   5955 |
|        43 | GO_FIRST  | G8-392    | Delhi       | Afternoon      | one         | Early_Morning | Kolkata          | Economy  |    16.00 |         1 |   5954 |
|        44 | GO_FIRST  | G8-390    | Mumbai      | Early_Morning  | one         | Afternoon     | Hyderabad        | Economy  |     9.67 |         3 |   4262 |
|        45 | Vistara   | UK-996    | Mumbai      | Evening        | zero        | Night         | Delhi            | Economy  |     2.17 |         1 |   9618 |
|        46 | Indigo    | 6E-841    | Bangalore   | Afternoon      | one         | Evening       | Kolkata          | Economy  |     5.17 |         1 |  11793 |
|        47 | GO_FIRST  | G8-873    | Bangalore   | Morning        | one         | Night         | Hyderabad        | Economy  |    10.83 |        49 |   7919 |
|        48 | Vistara   | UK-816    | Bangalore   | Morning        | one         | Night         | Chennai          | Economy  |    11.25 |         1 |  15667 |
|        49 | Vistara   | UK-954    | Mumbai      | Early_Morning  | one         | Morning       | Bangalore        | Economy  |     5.83 |         5 |  11129 |
|        50 | Indigo    | 6E-841    | Bangalore   | Afternoon      | one         | Night         | Kolkata          | Economy  |     7.17 |         1 |  11793 |
|        51 | Air_India | AI-768    | Kolkata     | Afternoon      | one         | Night         | Mumbai           | Economy  |    32.17 |        49 |   9359 |
|        52 | Air_India | AI-505    | Bangalore   | Morning        | one         | Morning       | Mumbai           | Economy  |    23.75 |        49 |   6578 |
|        53 | Vistara   | UK-902    | Mumbai      | Afternoon      | one         | Night         | Bangalore        | Economy  |     6.92 |         5 |  11129 |
|        54 | Vistara   | UK-927    | Delhi       | Morning        | zero        | Morning       | Mumbai           | Economy  |     2.08 |         1 |   6060 |
|        55 | Indigo    | 6E-354    | Mumbai      | Afternoon      | zero        | Afternoon     | Hyderabad        | Economy  |     1.33 |         3 |   4263 |
|        56 | Vistara   | UK-706    | Kolkata     | Morning        | one         | Night         | Mumbai           | Economy  |    11.33 |        49 |   7992 |
|        57 | AirAsia   | I5-991    | Kolkata     | Evening        | zero        | Evening       | Bangalore        | Economy  |     2.83 |         1 |  13047 |
|        58 | SpiceJet  | SG-406    | Kolkata     | Night          | zero        | Night         | Bangalore        | Economy  |     2.67 |         1 |   6488 |
|        59 | GO_FIRST  | G8-336    | Delhi       | Afternoon      | one         | Early_Morning | Kolkata          | Economy  |    16.67 |         1 |   5954 |
|        60 | Indigo    | 6E-5332   | Mumbai      | Early_Morning  | one         | Afternoon     | Bangalore        | Economy  |     6.92 |         5 |   9671 |
|        61 | Air_India | AI-505    | Bangalore   | Morning        | zero        | Afternoon     | Delhi            | Economy  |     2.58 |         1 |   7489 |
|        62 | Vistara   | UK-820    | Bangalore   | Evening        | zero        | Night         | Delhi            | Economy  |     2.67 |         1 |   7489 |
|        63 | Air_India | AI-501    | Bangalore   | Afternoon      | one         | Night         | Chennai          | Economy  |    10.25 |         1 |  14524 |
|        64 | Indigo    | 6E-654    | Delhi       | Evening        | zero        | Night         | Bangalore        | Economy  |     2.92 |         1 |   7425 |
|        65 | GO_FIRST  | G8-374    | Bangalore   | Early_Morning  | one         | Night         | Mumbai           | Economy  |    16.25 |        49 |   6787 |
|        66 | Indigo    | 6E-6139   | Bangalore   | Afternoon      | zero        | Evening       | Delhi            | Economy  |     2.75 |         1 |   7488 |
|        67 | Vistara   | UK-813    | Delhi       | Evening        | zero        | Night         | Bangalore        | Economy  |     2.83 |         1 |   7425 |
|        68 | AirAsia   | I5-1529   | Delhi       | Morning        | zero        | Afternoon     | Bangalore        | Economy  |     2.83 |         1 |   7426 |
|        69 | Vistara   | UK-852    | Mumbai      | Afternoon      | two_or_more | Night         | Kolkata          | Economy  |    10.58 |        49 |   9506 |
|        70 | Air_India | AI-483    | Delhi       | Evening        | one         | Evening       | Hyderabad        | Economy  |    25.08 |         1 |  12688 |
|        71 | Indigo    | 6E-2026   | Delhi       | Morning        | zero        | Morning       | Bangalore        | Economy  |     2.92 |         1 |   7425 |
|        72 | Air_India | AI-867    | Mumbai      | Night          | one         | Morning       | Hyderabad        | Economy  |    13.00 |         1 |   7584 |
|        73 | Vistara   | UK-706    | Kolkata     | Morning        | one         | Evening       | Mumbai           | Economy  |     8.08 |        49 |   8579 |
|        74 | Vistara   | UK-940    | Mumbai      | Evening        | zero        | Night         | Delhi            | Economy  |     2.17 |         1 |   7518 |
|        75 | Air_India | AI-867    | Mumbai      | Night          | one         | Morning       | Hyderabad        | Economy  |    14.42 |         1 |   7584 |
|        76 | Vistara   | UK-871    | Delhi       | Night          | zero        | Night         | Hyderabad        | Business |     2.33 |         1 |  30630 |
|        77 | Vistara   | UK-822    | Chennai     | Morning        | one         | Night         | Delhi            | Business |    10.92 |        27 |  68112 |
|        78 | Vistara   | UK-870    | Hyderabad   | Night          | one         | Afternoon     | Mumbai           | Business |    16.00 |        21 |  64890 |
|        79 | Vistara   | UK-838    | Chennai     | Night          | one         | Morning       | Kolkata          | Business |    11.50 |         3 | 102832 |
|        80 | Air_India | AI-840    | Hyderabad   | Night          | one         | Night         | Kolkata          | Business |    25.50 |         7 |  51707 |
|        81 | Vistara   | UK-834    | Chennai     | Evening        | one         | Evening       | Kolkata          | Business |    24.92 |         4 |  55377 |
|        82 | Vistara   | UK-828    | Chennai     | Early_Morning  | one         | Afternoon     | Delhi            | Business |     8.67 |        27 |  64729 |
|        83 | Vistara   | UK-776    | Kolkata     | Evening        | one         | Morning       | Delhi            | Business |    15.00 |         4 |  61583 |
|        84 | Air_India | AI-672    | Chennai     | Afternoon      | one         | Night         | Delhi            | Business |     5.50 |         4 |  45185 |
|        85 | Air_India | AI-440    | Chennai     | Early_Morning  | zero        | Morning       | Delhi            | Business |     2.67 |         4 |  27792 |
|        86 | Vistara   | UK-850    | Bangalore   | Evening        | one         | Morning       | Delhi            | Business |    13.17 |         1 |  61897 |
|        87 | Vistara   | UK-955    | Delhi       | Evening        | one         | Night         | Hyderabad        | Business |    27.17 |         1 |  63513 |
|        88 | Vistara   | UK-836    | Chennai     | Morning        | one         | Night         | Mumbai           | Business |     9.33 |        11 |  64113 |
|        89 | Vistara   | UK-775    | Mumbai      | Afternoon      | zero        | Evening       | Kolkata          | Business |     2.83 |        32 |  31436 |
|        90 | Vistara   | UK-986    | Mumbai      | Night          | one         | Morning       | Kolkata          | Business |    10.83 |        32 |  49725 |
|        91 | Air_India | AI-888    | Mumbai      | Evening        | one         | Evening       | Hyderabad        | Business |    24.33 |         1 |  50810 |
|        92 | Vistara   | UK-930    | Mumbai      | Early_Morning  | one         | Night         | Chennai          | Business |    15.25 |        49 |  64173 |
|        93 | Air_India | AI-538    | Chennai     | Night          | zero        | Night         | Delhi            | Business |     2.83 |         4 |  27792 |
|        94 | Air_India | AI-768    | Kolkata     | Afternoon      | one         | Night         | Mumbai           | Business |     5.75 |        32 |  50271 |
|        95 | Vistara   | UK-890    | Hyderabad   | Evening        | one         | Morning       | Chennai          | Business |    16.25 |         2 |  70154 |
|        96 | Vistara   | UK-808    | Bangalore   | Early_Morning  | zero        | Morning       | Delhi            | Business |     2.67 |         2 |  34043 |
|        97 | Vistara   | UK-985    | Delhi       | Evening        | one         | Afternoon     | Hyderabad        | Business |    16.42 |         1 |  71364 |
|        98 | Vistara   | UK-890    | Hyderabad   | Evening        | one         | Night         | Chennai          | Business |    29.08 |         2 |  70154 |
|        99 | Vistara   | UK-880    | Hyderabad   | Afternoon      | one         | Evening       | Kolkata          | Business |     6.17 |         7 |  53499 |
|       100 | Vistara   | UK-772    | Kolkata     | Morning        | one         | Night         | Delhi            | Business |    10.25 |         4 |  68303 |
+-----------+-----------+-----------+-------------+----------------+-------------+---------------+------------------+----------+----------+-----------+--------+
100 rows in set (0.00 sec)

mysql> ALTER TABLE flightdetails
    -> MODIFY Record_ID INT NOT NULL,
    -> MODIFY Airline VARCHAR(50) NOT NULL,
    -> MODIFY Flight VARCHAR(20) NOT NULL,
    -> MODIFY Source_City VARCHAR(50) NOT NULL,
    -> MODIFY Departure_Time VARCHAR(50) NOT NULL,
    -> MODIFY Stops VARCHAR(20) NOT NULL,
    -> MODIFY Arrival_Time VARCHAR(50) NOT NULL,
    -> MODIFY Destination_City VARCHAR(50) NOT NULL,
    -> MODIFY Class VARCHAR(20) NOT NULL,
    -> MODIFY Duration DECIMAL(5,2) NOT NULL,
    -> MODIFY Days_Left INT NOT NULL,
    -> MODIFY Price INT NOT NULL;
Query OK, 0 rows affected (0.17 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC flightdetails;
+------------------+--------------+------+-----+---------+-------+
| Field            | Type         | Null | Key | Default | Extra |
+------------------+--------------+------+-----+---------+-------+
| Record_ID        | int          | NO   | PRI | NULL    |       |
| Airline          | varchar(50)  | NO   |     | NULL    |       |
| Flight           | varchar(20)  | NO   |     | NULL    |       |
| Source_City      | varchar(50)  | NO   |     | NULL    |       |
| Departure_Time   | varchar(50)  | NO   |     | NULL    |       |
| Stops            | varchar(20)  | NO   |     | NULL    |       |
| Arrival_Time     | varchar(50)  | NO   |     | NULL    |       |
| Destination_City | varchar(50)  | NO   |     | NULL    |       |
| Class            | varchar(20)  | NO   |     | NULL    |       |
| Duration         | decimal(5,2) | NO   |     | NULL    |       |
| Days_Left        | int          | NO   |     | NULL    |       |
| Price            | int          | NO   |     | NULL    |       |
+------------------+--------------+------+-----+---------+-------+
12 rows in set (0.00 sec)


INSERT INTO flightdetails (record_id, airline, flight, source_city, departure_time, stops, arrival_time, destination_city, class, duration, days_left, price) VALUES
(101, 'Air_India', 'AI-573', 'Kolkata', 'Evening', 1, 'Afternoon', 'Delhi', 'Business', 18.75, 4, 57939),
(102, 'Vistara', 'UK-838', 'Chennai', 'Night', 1, 'Early_Morning', 'Mumbai', 'Business', 10.83, 11, 61873),
(103, 'Vistara', 'UK-834', 'Chennai', 'Evening', 0, 'Evening', 'Delhi', 'Business', 2.75, 4, 27792),
(104, 'Vistara', 'UK-822', 'Chennai', 'Morning', 1, 'Evening', 'Hyderabad', 'Business', 10.08, 49, 69265),
(105, 'Air_India', 'AI-402', 'Kolkata', 'Morning', 1, 'Evening', 'Mumbai', 'Business', 7.58, 32, 50271),
(106, 'Vistara', 'UK-870', 'Hyderabad', 'Night', 1, 'Early_Morning', 'Mumbai', 'Business', 11.33, 21, 64890),
(107, 'Vistara', 'UK-850', 'Bangalore', 'Evening', 1, 'Evening', 'Delhi', 'Business', 21.00, 1, 73881),
(108, 'Vistara', 'UK-955', 'Delhi', 'Evening', 1, 'Afternoon', 'Hyderabad', 'Business', 18.50, 1, 65764),
(109, 'Vistara', 'UK-838', 'Chennai', 'Night', 1, 'Evening', 'Mumbai', 'Business', 20.58, 11, 61873),
(110, 'Vistara', 'UK-836', 'Chennai', 'Morning', 1, 'Night', 'Mumbai', 'Business', 10.50, 11, 64113),
(111, 'Vistara', 'UK-890', 'Hyderabad', 'Evening', 1, 'Night', 'Mumbai', 'Business', 6.17, 21, 64890),
(112, 'Vistara', 'UK-834', 'Chennai', 'Evening', 1, 'Early_Morning', 'Mumbai', 'Business', 14.75, 11, 61873),
(113, 'Vistara', 'UK-880', 'Hyderabad', 'Afternoon', 1, 'Night', 'Mumbai', 'Business', 7.83, 21, 60555),
(114, 'Vistara', 'UK-870', 'Hyderabad', 'Night', 1, 'Morning', 'Mumbai', 'Business', 15.00, 21, 59290),
(115, 'Air_India', 'AI-840', 'Hyderabad', 'Night', 1, 'Afternoon', 'Kolkata', 'Business', 17.67, 7, 51707),
(116, 'Air_India', 'AI-559', 'Hyderabad', 'Early_Morning', 1, 'Night', 'Bangalore', 'Business', 13.58, 9, 56590),
(117, 'Vistara', 'UK-838', 'Chennai', 'Night', 1, 'Evening', 'Kolkata', 'Business', 21.00, 4, 55377),
(118, 'Air_India', 'AI-541', 'Hyderabad', 'Evening', 1, 'Morning', 'Kolkata', 'Business', 16.75, 7, 51707),
(119, 'Vistara', 'UK-832', 'Chennai', 'Early_Morning', 1, 'Night', 'Hyderabad', 'Business', 13.83, 49, 79099),
(120, 'Air_India', 'AI-840', 'Hyderabad', 'Night', 1, 'Afternoon', 'Bangalore', 'Business', 15.67, 9, 56590),
(121, 'Air_India', 'AI-543', 'Hyderabad', 'Morning', 1, 'Morning', 'Chennai', 'Business', 21.58, 2, 62221),
(122, 'Air_India', 'AI-808', 'Bangalore', 'Night', 0, 'Night', 'Delhi', 'Business', 2.92, 1, 34043),
(123, 'Vistara', 'UK-988', 'Mumbai', 'Night', 1, 'Night', 'Chennai', 'Business', 23.33, 49, 61933),
(124, 'Vistara', 'UK-830', 'Hyderabad', 'Morning', 1, 'Night', 'Mumbai', 'Business', 11.67, 21, 66155),
(125, 'Vistara', 'UK-860', 'Hyderabad', 'Early_Morning', 1, 'Evening', 'Bangalore', 'Business', 10.17, 9, 56702),
(126, 'Air_India', 'AI-672', 'Chennai', 'Afternoon', 1, 'Night', 'Kolkata', 'Business', 8.75, 4, 54481),
(127, 'Air_India', 'AI-765', 'Kolkata', 'Evening', 1, 'Evening', 'Delhi', 'Business', 26.58, 4, 60175),
(128, 'Vistara', 'UK-776', 'Kolkata', 'Evening', 1, 'Evening', 'Delhi', 'Business', 24.50, 4, 66063),
(129, 'Vistara', 'UK-772', 'Kolkata', 'Morning', 1, 'Night', 'Delhi', 'Business', 11.50, 4, 68303),
(130, 'Vistara', 'UK-830', 'Hyderabad', 'Morning', 1, 'Night', 'Mumbai', 'Business', 10.92, 21, 60555);

30 rows in set (0.00 sec)



