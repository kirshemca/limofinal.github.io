<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="LimoFinal.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Limofahr - Premium</title>
    <link rel="icon" type="image/x-icon" href="images/favicon.png" />

    <meta charset="UTF-8" />
    <meta name="description" content="Free Web tutorials" />
    <meta name="keywords" content="HTML, CSS, JavaScript" />
    <meta name="author" content="John Doe" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!----------------------------- Vendors -------------------------------->

    <link href="css/Main.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/jquery.datetimepicker.css" rel="stylesheet" />
    <link href="css/owl.carousel.min.css" rel="stylesheet" />
    <link href="css/Roboto.css" rel="stylesheet" />

    <!----------------------------- Scripts -------------------------------->

    <script src="https://www.limofahr.com/assets/js/jquery-3.3.1.min.js"></script>

    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.datetimepicker.full.min.js"></script>
    <script src="js/Main.js"></script>

</head>
<body>
    <form id="form1" runat="server">

        <!----------------------- Mobile View Navigation -------------------->
        <div class="mobile_navigation">
            <div class="mobile_navigation_inner">
                <div class="close_mobile_navigation">
                    <img src="images/mobilemenu_close_icon.png " />
                </div>
            </div>
            <div class="mobile_country_list mobile_currency_list">
                <ul>
                    <li class="active"><a onclick="set_currency('USD')" href="javascript:void(0);">USD</a></li>
                    <li><a onclick="set_currency('INR')" href="javascript:void(0);">INR</a></li>
                    <li><a onclick="set_currency('EUR')" href="javascript:void(0);">EUR</a></li>
                    <li><a onclick="set_currency('AUD')" href="javascript:void(0);">AUD</a></li>
                    <li><a onclick="set_currency('GBP')" href="javascript:void(0);">GBP</a></li>
                    <li><a onclick="set_currency('NZD')" href="javascript:void(0);">NZD</a></li>
                    <li><a onclick="set_currency('AED')" href="javascript:void(0);">AED</a></li>
                </ul>
            </div>
            <ul class="mobile_menu">
                <li><a href="Index.aspx">Home</a></li>
                <li><a href="#">About Us</a></li>
                <li><a href="#">All Cities</a></li>
                <li><a href="javascript:void(0)" data-toggle="modal" data-target="#booking-enquiry-modal">Booking Enquiry</a></li>
                <li><a href="#">Become a Partner</a></li>
                <li><a href="#">Contact Us</a></li>
                <li><a href="javascript:void(0)" data-toggle="modal" data-target="#login-modal">Login</a></li>
            </ul>
            <ul class="mobile_social">
                <li><a href="#" target="_blank"><i class="fa fa-facebook"></i></a></li>
                <li><a href="#" target="_blank"><i class="fa fa-instagram"></i></a></li>
                <li><a href="#" target="_blank"><i class="fa fa-twitter"></i></a></li>
                <li><a href="#" target="_blank"><i class="fa fa-pinterest"></i></a></li>
                <li><a href="#" target="_blank"><i class="fa fa-linkedin"></i></a></li>
            </ul>
        </div>

        <!----------------------- Header -------------------->
        <header class="header">
            <div class="container">
                <div class="header-inner">
                    <a href="#" class="logo">
                        <img src="images/logo.png" />
                    </a>
                    <div class="manu-wrap">
                        <div class="main-nav">
                            <ul>
                                <li class="partner whatsapp_icon_header menu-item menu-item-type-custom menu-item-object-custom menu-item-4340"><a href="#" style="text-decoration: none;">Connect on WhatsApp</a></li>
                                <li class="partner booking_enq"><a href="javascript:void(0)" data-toggle="modal" data-target="#booking-enquiry-modal" style="text-decoration: none;">Booking Enquiry</a></li>
                            </ul>
                        </div>
                        <div class="mobile-header-hamberger">
                            <img src="images/hamberger-menu-icon.png" />
                        </div>
                        <div class="login-register">
                            <ul>
                                <li><a href="javascript:void(0)" class="login" data-toggle="modal" data-target="#login-modal">Login</a></li>
                                <li><a href="#" class="mobile_dot">
                                    <img src="images/mobile_menu_dot.gif" />
                                </a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </header>

        <!----------------------- Booking Section -------------------->
        <%--<section class="booking-section home-bookingform" style="background-image: url('images/banner-img1.png')">
            <div class="container banner-text">
                <div class="banner-text-left">

                    <h1 class="global-heading">Book Chauffeur Service Worldwide</h1>
                    <p class="global-sub">Simplify Journeys with Quality Assurance</p>
                </div>
                <div class="banner-from form-tab">
                    <ul class="nav nav-tabs">
                        <li class="nav-item">
                            <a class="nav-link active" data-toggle="tab" href="#airport">
                                <span class="icon">
                                    <img src="images/airport-transfer2.png" class="default" />
                                    <img src="images/airport-transfer.png" class="actives" />
                                </span>
                                Airport Transfers</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#end-to-end">
                                <span class="icon">
                                    <img src="images/endtoend2.png" class="default" />
                                    <img src="images/endtoend.png" class="actives" />
                                </span>
                                Point To Point</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#hourly-booking">
                                <span class="icon">
                                    <img src="images/hourly-booking2.png" class="default" />
                                    <img src="images/hourly-booking.png" class="actives" />
                                </span>
                                Hourly Booking
                        </a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="airport">
                            <h3>Book Premium Limousine
                                <br>
                                Service With Chauffeur</h3>
                            <div class="booking-form">
                                <div class="tabs-contents">
                                    <div class="form-wrapper">
                                        <div class="booking-wrapper">
                                            <div class="main-options">
                                                <input type="hidden" id="ride_source_lat" name="ride_source_lat">
                                                <input type="hidden" id="ride_source_lng" name="ride_source_lng">
                                                <input type="hidden" id="ride_destination_lat" name="ride_destination_lat">
                                                <input type="hidden" id="ride_destination_lng" name="ride_destination_lng">
                                                <input type="hidden" id="ride_country_code" name="ride_country_code">
                                                <input type="hidden" id="ride_terminal_id" name="ride_terminal_id">
                                                <input type="hidden" id="ride_from" name="ride_from" value="airport-terminal">
                                                <div class="bookinkg-fields">
                                                    <div class="switch-fields">
                                                        <div class="input-field pickup" id="ride_source_location_label">
                                                            <span class="icon">
                                                                <img src="images/pickup-point.png" /></span>
                                                            <input type="text" id="ride_source_location" name="ride_source_location" class="form-control" placeholder="Airport Terminal" autocomplete="off" spellcheck="false" data-ms-editor="true">
                                                            <i class="close-search ride_source">X</i>
                                                        </div>
                                                        <div class="switch-icon">
                                                            <img src="images/switch-icon.png" />
                                                        </div>
                                                        <div class="input-field dropoff-point" id="ride_destination_location_label">
                                                            <span class="icon">
                                                                <img src="images/destination.png" /></span>
                                                            <input type="text" id="ride_destination_location" name="ride_destination_location" class="form-control pac-target-input" placeholder="Location" autocomplete="off" spellcheck="false" data-ms-editor="true">
                                                            <i class="close-search ride_destination">X</i>
                                                            <ul id="ride_destination_location_list"></ul>
                                                        </div>
                                                        <ul id="airport_terminal_suggestion_list"></ul>
                                                    </div>
                                                    <div class="nonswitch-fields mt_10">
                                                        <div class="input-field pickup-date" id="pickup_date_label">
                                                            <span class="icon">
                                                                <img src="images/pickup-date.png" /></span>
                                                            <input type="text" class="form-control" id="pickup_date" name="pickup_date" placeholder="Pickup Date" autocomplete="off">
                                                        </div>
                                                        <div class="input-field pickup-time dropdown" id="pickup_time_label">
                                                            <span class="icon">
                                                                <img src="images/pickup-time.png" /></span>
                                                            <input type="text" class="form-control dropdown-toggle" id="pickup_time" name="pickup_time" data-toggle="dropdown" placeholder="Pickup Time" autocomplete="off" spellcheck="false" data-ms-editor="true">
                                                            <div class="dropdown-menu">
                                                                <h6>Pickup Time</h6>
                                                                <div class="select-box">
                                                                    <select class="form-control" id="select_hour">
                                                                        <option value="00">00 (12 am)</option>
                                                                        <option value="01">01 (1 am)</option>
                                                                        <option value="02">02 (2 am)</option>
                                                                        <option value="03">03 (3 am)</option>
                                                                        <option value="04">04 (4 am)</option>
                                                                        <option value="05">05 (5 am)</option>
                                                                        <option value="06">06 (6 am)</option>
                                                                        <option value="07">07 (7 am)</option>
                                                                        <option value="08">08 (8 am)</option>
                                                                        <option value="09">09 (9 am)</option>
                                                                        <option value="10">10 (10 am)</option>
                                                                        <option value="11">11 (11 am)</option>
                                                                        <option value="12">12 (12 pm)</option>
                                                                        <option value="13">13 (1 pm)</option>
                                                                        <option value="14">14 (2 pm)</option>
                                                                        <option value="15">15 (3 pm)</option>
                                                                        <option value="16">16 (4 pm)</option>
                                                                        <option value="17">17 (5 pm)</option>
                                                                        <option value="18">18 (6 pm)</option>
                                                                        <option value="19">19 (7 pm)</option>
                                                                        <option value="20">20 (8 pm)</option>
                                                                        <option value="21">21 (9 pm)</option>
                                                                        <option value="22">22 (10 pm)</option>
                                                                        <option value="23">23 (11 pm)</option>
                                                                    </select>
                                                                    <select class="form-control" id="select_minute">
                                                                        <option value="00">00</option>
                                                                        <option value="05">05</option>
                                                                        <option value="10">10</option>
                                                                        <option value="15">15</option>
                                                                        <option value="20">20</option>
                                                                        <option value="25">25</option>
                                                                        <option value="30">30</option>
                                                                        <option value="35">35</option>
                                                                        <option value="40">40</option>
                                                                        <option value="45">45</option>
                                                                        <option value="50">50</option>
                                                                        <option value="55">55</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="input-field no-of-passengers" id="number_of_label">
                                                            <span class="icon">
                                                                <img src="images/no-of-passengers.png" /></span>
                                                            <div class="select-passengers">
                                                                <span class="TotalVal_p">1 </span>Passengers
                                                           
                                                            </div>
                                                            <div class="add-passengers">
                                                                <span class="icon">
                                                                    <img src="images/no-of-passengers.png" />
                                                                    Passengers</span>
                                                                <div class="qtySelector text-center">
                                                                    <i class="fa fa-minus decreaseQty"></i>
                                                                    <input type="text" id="number_of_passenger" name="number_of_passenger" class="qtyValue" value="1" spellcheck="false" data-ms-editor="true">
                                                                    <i class="fa fa-plus increaseQty"></i>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <button type="submit" name="action" value="fetch_ride" class="btn search-ridebtn">Search your Ride</button>
                                                </div>

                                            </div>
                                            <div class="more-options">
                                                <div class="bookinkg-fields">
                                                    <div class="input-field return-date">
                                                        <span class="icon">
                                                            <img src="images/pickup-date.png" /></span>
                                                        <input type="text" class="form-control picker-date" id="return_date" name="return_date" placeholder="Return Date" spellcheck="false" data-ms-editor="true">
                                                    </div>
                                                    <div class="input-field return-time">
                                                        <span class="icon">
                                                            <img src="images/pickup-time.png" /></span>
                                                        <input type="text" class="form-control picker-time" id="return_time" name="return_time" placeholder="Return Time" spellcheck="false" data-ms-editor="true">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane" id="end-to-end">
                            <h3>Book Premium Limousine
                                <br>
                                Service With Chauffeur</h3>
                            <div class="booking-form">
                                <div class="tabs-contents">
                                    <div class="form-wrapper">
                                        <div class="booking-wrapper">
                                            <div class="main-options">
                                                <input type="hidden" id="end_to_end_source_lat" name="ride_source_lat">
                                                <input type="hidden" id="end_to_end_source_lng" name="ride_source_lng">
                                                <input type="hidden" id="end_to_end_source_place_id" name="ride_source_place_id">
                                                <input type="hidden" id="end_to_end_destination_lat" name="ride_destination_lat">
                                                <input type="hidden" id="end_to_end_destination_lng" name="ride_destination_lng">
                                                <input type="hidden" id="end_to_end_destination_place_id" name="ride_destination_place_id">
                                                <input type="hidden" id="end_to_end_country_code" name="ride_country_code">
                                                <input type="hidden" id="end_to_end_terminal_id" name="ride_terminal_id">
                                                <input type="hidden" id="end_to_end_from" name="ride_from" value="end_to_end">
                                                <div class="bookinkg-fields">
                                                    <div class="switch-fields">
                                                        <div class="input-field pickup" id="end_to_end_source_location_label">
                                                            <span class="icon">
                                                                <img src="images/destination.png" /></span>
                                                            <input type="text" id="end_to_end_source_location" name="ride_source_location" class="form-control cls_keypress pac-target-input" placeholder="Pickup Point" autocomplete="off" spellcheck="false" data-ms-editor="true">
                                                            <i class="close-search ride_source">X</i>
                                                            <ul id="end_to_end_source_location_list"></ul>
                                                        </div>
                                                        <div class="input-field dropoff-point" id="end_to_end_destination_location_label">
                                                            <span class="icon">
                                                                <img src="images/destination.png" /></span>
                                                            <input type="text" id="end_to_end_destination_location" name="ride_destination_location" class="form-control cls_keypress pac-target-input" placeholder="Destination" autocomplete="off" spellcheck="false" data-ms-editor="true">
                                                            <i class="close-search ride_destination">X</i>
                                                            <ul id="end_to_end_destination_location_list"></ul>
                                                        </div>
                                                    </div>
                                                    <div class="nonswitch-fields mt_10">
                                                        <div class="input-field pickup-date" id="end_to_end_pickup_date_label">
                                                            <span class="icon">
                                                                <img src="images/pickup-date.png" /></span>
                                                            <input type="text" class="form-control" id="end_to_end_pickup_date" name="pickup_date" readonly="readonly" placeholder="Pickup Date" min="2025-11-02">
                                                        </div>
                                                        <div class="input-field pickup-time dropdown" id="end_to_end_pickup_time_label">
                                                            <span class="icon">
                                                                <img src="images/pickup-time.png" /></span>
                                                            <input type="text" class="form-control dropdown-toggle" id="end_to_end_pickup_time" name="pickup_time" data-toggle="dropdown" placeholder="Pickup Time" autocomplete="off" spellcheck="false" data-ms-editor="true">
                                                            <div class="dropdown-menu">
                                                                <h6>Pickup Time</h6>
                                                                <div class="select-box">
                                                                    <select class="form-control" id="select_hour2">
                                                                        <option value="00">00 (12 am)</option>
                                                                        <option value="01">01 (1 am)</option>
                                                                        <option value="02">02 (2 am)</option>
                                                                        <option value="03">03 (3 am)</option>
                                                                        <option value="04">04 (4 am)</option>
                                                                        <option value="05">05 (5 am)</option>
                                                                        <option value="06">06 (6 am)</option>
                                                                        <option value="07">07 (7 am)</option>
                                                                        <option value="08">08 (8 am)</option>
                                                                        <option value="09">09 (9 am)</option>
                                                                        <option value="10">10 (10 am)</option>
                                                                        <option value="11">11 (11 am)</option>
                                                                        <option value="12">12 (12 pm)</option>
                                                                        <option value="13">13 (1 pm)</option>
                                                                        <option value="14">14 (2 pm)</option>
                                                                        <option value="15">15 (3 pm)</option>
                                                                        <option value="16">16 (4 pm)</option>
                                                                        <option value="17">17 (5 pm)</option>
                                                                        <option value="18">18 (6 pm)</option>
                                                                        <option value="19">19 (7 pm)</option>
                                                                        <option value="20">20 (8 pm)</option>
                                                                        <option value="21">21 (9 pm)</option>
                                                                        <option value="22">22 (10 pm)</option>
                                                                        <option value="23">23 (11 pm)</option>
                                                                    </select>
                                                                    <select class="form-control" id="select_minute2">
                                                                        <option value="00">00</option>
                                                                        <option value="05">05</option>
                                                                        <option value="10">10</option>
                                                                        <option value="15">15</option>
                                                                        <option value="20">20</option>
                                                                        <option value="25">25</option>
                                                                        <option value="30">30</option>
                                                                        <option value="35">35</option>
                                                                        <option value="40">40</option>
                                                                        <option value="45">45</option>
                                                                        <option value="50">50</option>
                                                                        <option value="55">55</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="input-field no-of-passengers" id="end_to_end_number_of_label">
                                                            <span class="icon">
                                                                <img src="images/no-of-passengers.png" /></span>
                                                            <div class="select-passengers">
                                                                <span class="TotalVal_p">1 </span>Passengers
                                                           
                                                            </div>
                                                            <div class="add-passengers">
                                                                <span class="icon">
                                                                    <img src="images/no-of-passengers.png" />
                                                                    Passengers</span>
                                                                <div class="qtySelector text-center">
                                                                    <i class="fa fa-minus decreaseQty"></i>
                                                                    <input type="text" id="end_to_end_number_of_passenger" name="number_of_passenger" class="qtyValue" value="1" spellcheck="false" data-ms-editor="true">
                                                                    <i class="fa fa-plus increaseQty"></i>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <button type="submit" name="action" value="fetch_ride" class="btn search-ridebtn">Search your Ride</button>
                                                </div>

                                            </div>
                                            <div class="more-options">
                                                <div class="bookinkg-fields">
                                                    <div class="input-field return-date">
                                                        <span class="icon">
                                                            <img src="images/pickup-date.png" /></span>
                                                        <input type="text" class="form-control picker-date" id="return_date" name="return_date" placeholder="Return Date" spellcheck="false" data-ms-editor="true">
                                                    </div>
                                                    <div class="input-field return-time">
                                                        <span class="icon">
                                                            <img src="images/pickup-time.png" /></span>
                                                        <input type="text" class="form-control picker-time" id="return_time" name="return_time" placeholder="Return Time" spellcheck="false" data-ms-editor="true">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane" id="hourly-booking">
                            <h3>Book Premium Limousine
                    <br>
                                Service With Chauffeur</h3>
                            <div class="booking-form">
                                <div class="tabs-contents">
                                    <div class="form-wrapper">
                                        <div class="booking-wrapper">
                                            <div class="main-options">
                                                <input type="hidden" id="hourly_booking_source_lat" name="ride_source_lat">
                                                <input type="hidden" id="hourly_booking_source_lng" name="ride_source_lng">
                                                <input type="hidden" id="hourly_booking_source_place_id" name="ride_source_place_id">
                                                <input type="hidden" id="hourly_booking_destination_lat" name="ride_destination_lat">
                                                <input type="hidden" id="hourly_booking_destination_lng" name="ride_destination_lng">
                                                <input type="hidden" id="hourly_booking_destination_place_id" name="ride_destination_place_id">
                                                <input type="hidden" id="hourly_booking_country_code" name="ride_country_code">
                                                <input type="hidden" id="hourly_booking_terminal_id" name="ride_terminal_id">
                                                <input type="hidden" id="hourly_booking_from" name="ride_from" value="hourly_booking">
                                                <div class="bookinkg-fields">
                                                    <div class="switch-fields">
                                                        <div class="input-field pickup" id="hourly_booking_source_location_label">
                                                            <span class="icon">
                                                                <img src="images/destination.png" /></span>
                                                            <input type="text" id="hourly_booking_source_location" name="ride_source_location" class="form-control cls_keypress pac-target-input" placeholder="Pickup Point" autocomplete="off" spellcheck="false" data-ms-editor="true">
                                                            <i class="close-search ride_source">X</i>
                                                            <ul id="hourly_booking_source_location_list"></ul>
                                                        </div>
                                                        <div class="input-field dropoff-point" id="hourly_booking_destination_location_label">
                                                            <span class="icon">
                                                                <img src="images/destination.png" /></span>
                                                            <input type="text" id="hourly_booking_destination_location" name="ride_destination_location" class="form-control cls_keypress pac-target-input" placeholder="Destination" autocomplete="off" spellcheck="false" data-ms-editor="true">
                                                            <i class="close-search ride_destination">X</i>
                                                            <ul id="hourly_booking_destination_location_list"></ul>
                                                        </div>
                                                    </div>
                                                    <div class="hourly_four_field_group">
                                                        <div class="nonswitch-fields mt_10 two_col_grid_end">
                                                            <div class="input-field pickup-date" id="hourly_booking_pickup_date_label">
                                                                <span class="icon">
                                                                    <img src="images/pickup-date.png" /></span>
                                                                <input type="text" class="form-control" id="hourly_booking_pickup_date" name="pickup_date" placeholder="Pickup Date" readonly="readonly" autocomplete="off">
                                                            </div>
                                                            <div class="input-field pickup-time dropdown" id="hourly_booking_pickup_time_label">
                                                                <span class="icon">
                                                                    <img src="images/pickup-time.png" /></span>
                                                                <input type="text" class="form-control dropdown-toggle" id="hourly_booking_pickup_time" name="pickup_time" data-toggle="dropdown" placeholder="Pickup Time" autocomplete="off" spellcheck="false" data-ms-editor="true">
                                                                <div class="dropdown-menu">
                                                                    <h6>Pickup Time</h6>
                                                                    <div class="select-box">
                                                                        <select class="form-control" id="select_hour3">
                                                                            <option value="00">00 (12 am)</option>
                                                                            <option value="01">01 (1 am)</option>
                                                                            <option value="02">02 (2 am)</option>
                                                                            <option value="03">03 (3 am)</option>
                                                                            <option value="04">04 (4 am)</option>
                                                                            <option value="05">05 (5 am)</option>
                                                                            <option value="06">06 (6 am)</option>
                                                                            <option value="07">07 (7 am)</option>
                                                                            <option value="08">08 (8 am)</option>
                                                                            <option value="09">09 (9 am)</option>
                                                                            <option value="10">10 (10 am)</option>
                                                                            <option value="11">11 (11 am)</option>
                                                                            <option value="12">12 (12 pm)</option>
                                                                            <option value="13">13 (1 pm)</option>
                                                                            <option value="14">14 (2 pm)</option>
                                                                            <option value="15">15 (3 pm)</option>
                                                                            <option value="16">16 (4 pm)</option>
                                                                            <option value="17">17 (5 pm)</option>
                                                                            <option value="18">18 (6 pm)</option>
                                                                            <option value="19">19 (7 pm)</option>
                                                                            <option value="20">20 (8 pm)</option>
                                                                            <option value="21">21 (9 pm)</option>
                                                                            <option value="22">22 (10 pm)</option>
                                                                            <option value="23">23 (11 pm)</option>
                                                                        </select>
                                                                        <select class="form-control" id="select_minute3">
                                                                            <option value="00">00</option>
                                                                            <option value="05">05</option>
                                                                            <option value="10">10</option>
                                                                            <option value="15">15</option>
                                                                            <option value="20">20</option>
                                                                            <option value="25">25</option>
                                                                            <option value="30">30</option>
                                                                            <option value="35">35</option>
                                                                            <option value="40">40</option>
                                                                            <option value="45">45</option>
                                                                            <option value="50">50</option>
                                                                            <option value="55">55</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="nonswitch-fields mt_10 two_col_grid_end">
                                                            <div class="input-field hourly-time" id="hourly_booking_hours_label">
                                                                <span class="icon">
                                                                    <img src="images/pickup-time.png" /></span>
                                                                <select class="form-control" id="hourly_booking_hours" name="hourly_booking_hours">
                                                                    <option value="">Pickup Hours</option>
                                                                    <option value="01">01 (hrs)</option>
                                                                    <option value="02">02 (hrs)</option>
                                                                    <option value="03">03 (hrs)</option>
                                                                    <option value="04">04 (hrs)</option>
                                                                    <option value="05">05 (hrs)</option>
                                                                    <option value="06">06 (hrs)</option>
                                                                    <option value="07">07 (hrs)</option>
                                                                    <option value="08">08 (hrs)</option>
                                                                    <option value="09">09 (hrs)</option>
                                                                    <option value="10">10 (hrs)</option>
                                                                    <option value="11">11 (hrs)</option>
                                                                    <option value="12">12 (hrs)</option>
                                                                    <option value="13">13 (hrs)</option>
                                                                    <option value="14">14 (hrs)</option>
                                                                    <option value="15">15 (hrs)</option>
                                                                    <option value="16">16 (hrs)</option>
                                                                    <option value="17">17 (hrs)</option>
                                                                    <option value="18">18 (hrs)</option>
                                                                    <option value="19">19 (hrs)</option>
                                                                    <option value="20">20 (hrs)</option>
                                                                    <option value="21">21 (hrs)</option>
                                                                    <option value="22">22 (hrs)</option>
                                                                </select>
                                                            </div>

                                                            <div class="input-field no-of-passengers" id="hourly_booking_number_of_label">
                                                                <span class="icon">
                                                                    <img src="images/no-of-passengers.png" /></span>
                                                                <div class="select-passengers">
                                                                    <span class="TotalVal_p">1 </span>Passengers
                                                           
                                                                </div>
                                                                <div class="add-passengers">
                                                                    <span class="icon">
                                                                        <img src="images/no-of-passengers.png" />
                                                                        Passengers</span>
                                                                    <div class="qtySelector text-center">
                                                                        <i class="fa fa-minus decreaseQty"></i>
                                                                        <input type="text" id="hourly_booking_number_of_passenger" name="number_of_passenger" class="qtyValue" value="1" spellcheck="false" data-ms-editor="true">
                                                                        <i class="fa fa-plus increaseQty"></i>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <button type="submit" name="action" value="fetch_ride" class="btn search-ridebtn">Search your Ride</button>
                                                </div>

                                            </div>
                                            <div class="more-options">
                                                <div class="bookinkg-fields">
                                                    <div class="input-field return-date">
                                                        <span class="icon">
                                                            <img src="images/pickup-date.png"></span>
                                                        <input type="text" class="form-control picker-date" id="return_date" name="return_date" placeholder="Return Date" spellcheck="false" data-ms-editor="true">
                                                    </div>
                                                    <div class="input-field return-time">
                                                        <span class="icon">
                                                            <img src="images/pickup-time.png" /></span>
                                                        <input type="text" class="form-control picker-time" id="return_time" name="return_time" placeholder="Return Time" spellcheck="false" data-ms-editor="true">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="car-animation">
                <div class="road-left">
                    <div class="car-wrap">
                        <img src="images/car2.png" class="car" />
                        <img src="images/car2_wheel.png" class="wheel1" />
                        <img src="images/car2_wheel.png" class="wheel2" />
                    </div>
                </div>
                <div class="road-right">
                    <div class="car-wrap">
                        <img src="images/car1.png" class="car" />
                        <img src="images/car1_wheel.png" class="wheel1" />
                        <img src="images/car1_wheel.png" class="wheel2" />
                    </div>
                </div>
            </div>
        </section>--%>

        <!---------------------- Book Airport Transfer --------------->
        <section class="how-limo-work">
            <div class="container">
                <h2 class="global-heading">Book Airport Transfer in NO TIME</h2>
                <p class="global-sub">Simplify Journeys with Quality Assurance</p>
                <div class="row">
                    <div class="col-md-3">
                        <div class="work-box">
                            <img src="images/workicon_1.png" />
                            <p>Simple and Quick Reservations Online, Phone or Mobile Device.</p>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="work-box">
                            <img src="images/workicon_2.png" />
                            <p>Book <b>limofahr</b> and other <b>Low Cost</b> transportation providers.</p>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="work-box">
                            <img src="images/workicon_3.png" />
                            <p><b>Customer Service</b> - Call us on the phone and speak with a real person.</p>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="work-box">
                            <img src="images/workicon_4.png" />
                            <p>Our <b>rates match or beat</b> any other website.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!---------------------- Our Partners --------------->
        <section class="our-partner">
            <div class="container">
                <h3 class="global-heading">Our Partners</h3>
                <p class="global-sub">Cars vary depending on the countries</p>
                <div class="partner-logos">
                    <div class="logolist text-center">
                        <img src="images/m1.jpeg" class="img-fluid" />
                        <img src="images/m2.jpeg" class="img-fluid" />
                        <img src="images/m4.jpeg" class="img-fluid" />
                        <img src="images/m5.jpeg" class="img-fluid" />
                        <img src="images/m6.jpeg" class="img-fluid" />
                        <img src="images/m7.jpeg" class="img-fluid" />
                        <img src="images/m8.jpeg" class="img-fluid" />
                        <img src="images/m10.jpeg" class="img-fluid" />
                        <img src="images/m11.jpeg" class="img-fluid" />
                    </div>
                </div>
            </div>
        </section>

        <!--------------------- Fleet Section ----------------->
        <section class="fleet-section">
            <div class="container">
                <h3 class="global-heading">Our Fleet</h3>
                <p class="global-sub">Cars vary depending on the countries</p>
                <div class="fleet-tab">
                    <div class="tab-menu">
                        <ul>
                            <li data-tag="economy"><a href="javascript:void(0);">ECONOMY</a></li>
                            <li class="active" data-tag="business"><a href="javascript:void(0);">BUSINESS</a></li>
                            <li data-tag="first-class"><a href="javascript:void(0);">FIRST CLASS</a></li>
                        </ul>
                    </div>
                    <div class="fleet-tab-content">
                        <div class="tab-wrapper economy" id="economy">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="car-box">
                                        <div class="car-bg">
                                            <img src="images/car-bg1.png" />
                                        </div>
                                        <div class="car-img">
                                            <img src="images/mercedes-cclass.png" />
                                        </div>
                                        <h6 class="car-name">AUDI A4</h6>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="car-box">
                                        <div class="car-bg">
                                            <img src="images/car-bg1.png" />
                                        </div>
                                        <div class="car-img">
                                            <img src="images/volkswagen-touran.png" />
                                        </div>
                                        <h6 class="car-name">VOLKSWAGEN TOURAN</h6>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="car-box">
                                        <div class="car-bg">
                                            <img src="images/car-bg1.png" />
                                        </div>
                                        <div class="car-img">
                                            <img src="images/opel-zafira.png" />
                                        </div>
                                        <h6 class="car-name">OPEL ZAFIRA</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-wrapper business show " id="business">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="car-box">
                                        <div class="car-bg">
                                            <img src="images/car-bg1.png" />
                                        </div>
                                        <div class="car-img">
                                            <img src="images/fleet-car11.png" />
                                        </div>
                                        <h6 class="car-name">MERCEDES E CLASS</h6>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="car-box">
                                        <div class="car-bg">
                                            <img src="images/car-bg1.png" />
                                        </div>
                                        <div class="car-img">
                                            <img src="images/fleet-car22.png" />
                                        </div>
                                        <h6 class="car-name">AUDI A6</h6>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="car-box">
                                        <div class="car-bg">
                                            <img src="images/car-bg1.png" />
                                        </div>
                                        <div class="car-img">
                                            <img src="images/fleet-car33.png" />
                                        </div>
                                        <h6 class="car-name">BMW 5 SERIES</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-wrapper first-class" id="first-class">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="car-box">
                                        <div class="car-bg">
                                            <img src="images/car-bg1.png" />
                                        </div>
                                        <div class="car-img">
                                            <img src="images/mercedes-sclass.png" />
                                        </div>
                                        <h6 class="car-name">MERCEDES S CLASS</h6>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="car-box">
                                        <div class="car-bg">
                                            <img src="images/car-bg1.png" />
                                        </div>
                                        <div class="car-img">
                                            <img src="images/bmw-7-series.png" />
                                        </div>
                                        <h6 class="car-name">BMW 7 SERIES</h6>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="car-box">
                                        <div class="car-bg">
                                            <img src="images/car-bg1.png" />
                                        </div>
                                        <div class="car-img">
                                            <img src="images/audi-q7.png" />
                                        </div>
                                        <h6 class="car-name">AUDI A8</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!--------------------- Airport Transfers Section ----------------->
        <section class="airports-transfer">
            <div class="container">
                <h3 class="global-heading">Popular airport transfers</h3>
                <p class="global-sub">Accelerating mobility in over <b>1000+ cities</b> covering all <b>100 major countries</b></p>
                <div class="row">
                    <div class="col-md-7">
                        <div class="row">
                            <div class="col-sm-6">
                                <a href="#" class="city-box">
                                    <img src="images/london.png" />
                                    <div class="city">
                                        <h6>London</h6>
                                        <p>United Kingdom</p>
                                    </div>
                                </a>
                            </div>
                            <div class="col-sm-6">
                                <a href="#" class="city-box">
                                    <img src="images/bergen_01.png" />
                                    <div class="city">
                                        <h6>Bergen</h6>
                                        <p>Norway</p>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <a href="#" class="city-box">
                            <img src="images/berlin.png" />
                            <div class="city">
                                <h6>Berlin</h6>
                                <p>Germany</p>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-5">
                        <a href="#" class="city-box">
                            <img src="images/oslo_01.png" />
                            <div class="city">
                                <h6>Oslo</h6>
                                <p>Norway</p>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-7">
                        <div class="row">
                            <div class="col-sm-6">
                                <a href="#" class="city-box">
                                    <img src="images/copenhagen_01.png" />
                                    <div class="city">
                                        <h6>Copenhagen</h6>
                                        <p>Denmark</p>
                                    </div>
                                </a>
                            </div>
                            <div class="col-sm-6">
                                <a href="#" class="city-box">
                                    <img src="images/frankfurt_01.png" />
                                    <div class="city">
                                        <h6>Frankfurt</h6>
                                        <p>Germany</p>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <a href="#" class="city-box">
                            <img src="images/dubai.png" />
                            <div class="city">
                                <h6>Dubai</h6>
                                <p>United Arab Emirates</p>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-7">
                        <div class="row">
                            <div class="col-sm-6">
                                <a href="#" class="city-box">
                                    <img src="images/jeddah_01.png" />
                                    <div class="city">
                                        <h6>Jeddah</h6>
                                        <p>Saudi Arabia</p>
                                    </div>
                                </a>
                            </div>
                            <div class="col-sm-6">
                                <a href="#" class="city-box allcity-view">
                                    <img src="images/amsterdam.png" />
                                    <div class="city">
                                        <h6>View All</h6>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!--------------------- Feature Section ----------------->
        <section class="feature-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="feature-box">
                            <span class="icon">
                                <img src="images/fixed-price.png" /></span>
                            <div class="feature-content">
                                <h6>Fixed Price</h6>
                                <p>No hidden charges and no hidden surprises, we offer fixed price that includes all taxes, tolls, fees etc.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="feature-box">
                            <span class="icon">
                                <img src="images/free-cancellation.png" /></span>
                            <div class="feature-content">
                                <h6>Free Cancellation</h6>
                                <p>Worried about how to cancel the ride? No issues! Cancellation of rides is free 24 hours before the pick-up time. Applicable only for point to point bookings.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="feature-box">
                            <span class="icon">
                                <img src="images/support.png" /></span>
                            <div class="feature-content">
                                <h6>24*7 Support</h6>
                                <p>Don’t let any query remain unresolved just ring it up at our 24*7 Support and resolve all your queries easily.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!--------------------- Our Customers Say Section ----------------->
        <section class="customer-reviews">
            <div class="container">
                <p class="global-sub">Customer Reviews</p>
                <h3 class="global-heading">What our customers say</h3>
            </div>
        </section>

        <!--------------------- Home Footer Text ----------------->
        <section class="home-footer-text">
            <div class="container">
                <h4>Explore the luxurious and stress-free travel experience with the best!!   </h4>
                <p>Who doesn’t like <b>premium airport transfer or limousine services</b> while travelling overseas. These travel services are in the capacity to provide an unbeatable level of comfort and convenience, allowing you to get to your destination in style. After all, who doesn’t want some extra delight while roaming around a different city or country. </p>
                <p>You are lucky if you can grab comfort on your next business or pleasure trip, you can get the most out of your trip with a reliable and comfortable service. Choose to enhance your travel taste with a range of services to make your journey smoother and more comfortable, allowing you to arrive at your location with utmost style. The lavish services offer an unparalleled level of comfort and convenience that can give you the ultimate travel experience. </p>
                <h4>Why do you even use airport travel services? </h4>
                <p>Well, these services are designed to get you to your destination quickly and comfortably, without having to worry about the stress of driving yourself or dealing with public transportation. </p>
                <p>We are there to make all the difference while you can care a little less about all the planning. We bet guaranteed satisfaction along with the best chauffeurs who will guide you throughout the journey and offer an explicit helping hand in order to match the level of comfort you desire. </p>
                <p>Our motto is to meet all customers needs and create an unforgettable experience for them which they can cherish for life. </p>
                <p>We believe in creating experiences and thus all our staff is very welcoming and friendly, we offer utmost every kind of help and support in order to comfort you while you travel or stay here. You can always trust us with your travel related concerns and connect with our team if need be and we will sort it out for you.</p>
            </div>
        </section>

        <!--------------------- Footer Section ----------------->
        <footer class="footer">
            <div class="footer-main">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="app-download">
                                <img src="Images/footer-logo.png" class="logo" />
                                <br />
                                <p class="email footer-iconbox">
                                    <img src="Images/email-icon.jpg" class="img-fluid" />                                   
                                </p>
                                <ul class="social_icon">
                                    <li><a href="#" target="_blank"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#" target="_blank"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#" target="_blank"><i class="fa fa-instagram"></i></a></li>
                                    <li><a href="#" target="_blank"><i class="fa fa-linkedin"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-9">
                            <div class="row">
                                <div class="col-sm-3">
                                    <h6>COMPANY</h6>
                                    <ul>
                                        <li><a href="#">About Us</a></li>
                                        <li><a href="#">Terms and Conditions</a></li>
                                        <li><a href="#">Privacy Policy</a></li>
                                        <li><a href="#">Cancellation Policy</a></li>
                                        <li><a href="#">Contact Us</a></li>
                                        <li><a href="#">Tailored made transfer services</a>
                                        </li>
                                        <li><a href="#">Special-Offers</a></li>
                                        <li><a href="#">Proffesional-Driver</a></li>
                                        <li><a href="#">Proffesional Chauffeur</a></li>
                                    </ul>
                                </div>
                                <div class="col-sm-3">
                                    <h6>OUR SERVICES</h6>
                                    <ul>
                                        <li><a target="_self" href="#">Airport Transfer Services</a>
                                        </li>
                                        <li><a target="_self" href="#">Limousine Services</a></li>
                                        <li><a target="_self" href="#">Chauffeur Services</a></li>
                                        <li><a target="_self" href="#">Bus Transportation Services</a></li>
                                        <li><a target="_self" href="#">Explore our Blog</a></li>
                                    </ul>
                                </div>
                                <div class="col-sm-3">
                                    <h6>OUR TOP CITIES</h6>
                                    <ul>
                                        <li><a href="#">Berlin</a></li>
                                        <li><a href="#">Dubai</a></li>
                                        <li><a href="#">Oslo</a></li>
                                        <li><a href="#">Copenhagen</a></li>
                                        <li><a href="#">All Cities</a></li>
                                    </ul>
                                </div>

                                <div class="col-sm-3">
                                    <h6>Support Center</h6>
                                    <ul>
                                        <li><a target="_self" href="#">Faqs</a></li>
                                        <li><a target="_self" href="#">Customer FAQ</a></li>
                                        <li><a target="_self" href="#">Supplier FAQ</a></li>
                                        <li class="partner"><a href="#">Become a Partner</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="copyrights">
                <div class="main-nav">
                </div>
                © 2025 Limofahr Premium Ltd. Trademarks and Brands are Property of their Respective Owners
            </div>

        </footer>

        <!--------------------- Whatsapp Section ----------------->
        <div class="whatsapp_floating">
            <a target="_blank" href="#"
                class="">
                <img src="images/whatsapp_logo.png" class="img-fluid" /></a>
        </div>

        <div class="modal fade global-modal" id="login-modal">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <button class="close btn" data-toggle="modal" data-target="#login-modal">
                        <img src="Images/cancel.png" /></button>
                    <div class="modal-body">
                        <div class="login-body" id="login">
                            <h4>Login</h4>
                            <div id="user_login_response"></div>
                            <input type="hidden" class="form-control" name="url_name" id="url_name" value="/">
                            <div class="form-group">
                                <input type="text" class="form-control" name="user_login_email" id="user_login_email"
                                    placeholder="E-mail Address">
                            </div>
                            <div class="form-group mb-0">
                                <input type="password" class="form-control" name="user_login_password" id="user_login_password"
                                    placeholder="Password">
                            </div>
                            <a href="#" class="mb-4 forgotpassword">Forgot Password</a>
                            <div class="input-group mt-3 mb-3">
                                <label class="custom-check">
                                    Remember Password
      <input type="checkbox">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                            <div class="submit-btn">
                                <button type="button" id="user_login_submit" class="btn submit_button">Submit</button>
                            </div>
                            <div class="login-bottom">
                                <h5>Do not have an account with us yet ?</h5>
                                <a href="#" class="regster-click">Register here</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade global-modal" id="register-modal">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <button class="close btn" data-toggle="modal" data-target="#register-modal">
                        <img src="Images/cancel.png" /></button>
                    <div class="modal-body">
                        <div class="login-body" id="login">
                            <h4>Register</h4>
                            <div id="user_registration_response"></div>
                            <div class="form-group">
                                <input type="text" class="form-control" name="user_register_first_name" id="user_register_first_name"
                                    placeholder="First Name">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" name="user_register_last_name" id="user_register_last_name"
                                    placeholder="Last Name">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" name="user_register_email" id="user_register_email"
                                    placeholder="E-Mail Address">
                            </div>
                            <div class="form-group">

                                <div class="input-group">
                                    <div class="input-group-prepend" id="country_registration_dialing_code_div">
                                        <div class="input-group-text countrycode-search-group">
                                            <input type="text" name="" class="mobile_countrycode_search searchTheKey" id="mobile_countrycode_search"
                                                value="" placeholder="Prefix" autocomplete="off">
                                            <span class="countrycode_arrow">
                                                <img src="Images/dropdown-arrow.png" /></span>
                                        </div>
                                    </div>
                                    <input type="hidden" class="form-control" id="user_register_country_dialing_code"
                                        value="" name="user_register_country_dialing_code" placeholder="Mobile number">
                                    <input type="number" class="form-control" id="user_register_mobile_number" name="user_register_mobile_number"
                                        placeholder="Mobile number" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
                                    <ul id="country_registration_dialing_code_list" class="flag_liststyle" style="display: none">
                                        <li onclick="set_country_registration_dialing_code('+61')"><i>Australia</i><span>+61</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+43')"><i>Austria</i><span>+43</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+994')"><i>Azerbaijan</i><span>+994</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+973')"><i>Behrain</i><span>+973</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+32')"><i>Belgium</i><span>+32</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+855')"><i>Cambodia</i><span>+855</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+420')"><i>Czech Republic</i><span>+420</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+45')"><i>Denmark</i><span>+45</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+372')"><i>Estonia</i><span>+372</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+358')"><i>Finland</i><span>+358</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+33')"><i>France</i><span>+33</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+971')"><i>United Arab Emirates</i><span>+971</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+54')"><i>Argentina</i><span>+54</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+297')"><i>Aruba</i><span>+297</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+387')"><i>Bosnia and Herzegovina</i><span>+387</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+1-246')"><i>Barbados</i><span>+1-246</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+880')"><i>Bangladesh</i><span>+880</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+359')"><i>Bulgaria</i><span>+359</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+973')"><i>Bahrain</i><span>+973</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+673')"><i>Brunei Darussalam</i><span>+673</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+591')"><i>Bolivia</i><span>+591</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+55')"><i>Brazil</i><span>+55</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+1-242')"><i>Bahamas</i><span>+1-242</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+975')"><i>Bhutan</i><span>+975</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+1')"><i>Canada</i><span>+1</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+41')"><i>Switzerland</i><span>+41</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+56')"><i>Chile</i><span>+56</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+86')"><i>China</i><span>+86</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+57')"><i>Colombia</i><span>+57</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+506')"><i>Costa Rica</i><span>+506</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+357')"><i>Cyprus</i><span>+357</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+49')"><i>Germany</i><span>+49</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+1-809')"><i>Dominican Republic</i><span>+1-809</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+213')"><i>Algeria</i><span>+213</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+593')"><i>Ecuador</i><span>+593</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+20')"><i>Egypt</i><span>+20</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+34')"><i>Spain</i><span>+34</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+679')"><i>Fiji</i><span>+679</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+44')"><i>United Kingdom</i><span>+44</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+995')"><i>Georgia</i><span>+995</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+30')"><i>Greece</i><span>+30</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+502')"><i>Guatemala</i><span>+502</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+852')"><i>Hong Kong</i><span>+852</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+385')"><i>Croatia</i><span>+385</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+36')"><i>Hungary</i><span>+36</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+62')"><i>Indonesia</i><span>+62</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+353')"><i>Republic of Ireland</i><span>+353</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+972')"><i>Israel</i><span>+972</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+91')"><i>India</i><span>+91</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+354')"><i>Iceland</i><span>+354</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+39')"><i>Italy</i><span>+39</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+1-876')"><i>Jamaica</i><span>+1-876</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+962')"><i>Jordan</i><span>+962</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+81')"><i>Japan</i><span>+81</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+254')"><i>Kenya</i><span>+254</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+996')"><i>Kyrgyzstan</i><span>+996</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+82')"><i>Korea</i><span>+82</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+965')"><i>Kuwait</i><span>+965</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+856')"><i>Laos</i><span>+856</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+94')"><i>Sri Lanka</i><span>+94</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+370')"><i>Lithuania</i><span>+370</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+352')"><i>Luxembourg</i><span>+352</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+371')"><i>Latvia</i><span>+371</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+212')"><i>Morocco</i><span>+212</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+389')"><i>Macedonia</i><span>+389</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+853')"><i>Macao</i><span>+853</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+356')"><i>Malta</i><span>+356</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+230')"><i>Mauritius</i><span>+230</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+960')"><i>Maldives</i><span>+960</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+52')"><i>Mexico</i><span>+52</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+60')"><i>Malaysia</i><span>+60</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+234')"><i>Nigeria</i><span>+234</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+505')"><i>Nicaragua</i><span>+505</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+31')"><i>Netherlands</i><span>+31</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+47')"><i>Norway</i><span>+47</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+977')"><i>Nepal</i><span>+977</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+64')"><i>New Zealand</i><span>+64</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+968')"><i>Oman</i><span>+968</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+507')"><i>Panama</i><span>+507</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+51')"><i>Peru</i><span>+51</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+689')"><i>French Polynesia</i><span>+689</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+63')"><i>Philippines</i><span>+63</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+92')"><i>Pakistan</i><span>+92</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+48')"><i>Poland</i><span>+48</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+1-787')"><i>Puerto Rico</i><span>+1-787</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+351')"><i>Portugal</i><span>+351</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+595')"><i>Paraguay</i><span>+595</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+974')"><i>Qatar</i><span>+974</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+40')"><i>Romania</i><span>+40</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+381')"><i>Serbia</i><span>+381</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+7')"><i>Russian Federation</i><span>+7</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+966')"><i>Saudi Arabia</i><span>+966</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+248')"><i>Seychelles</i><span>+248</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+46')"><i>Sweden</i><span>+46</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+65')"><i>Singapore</i><span>+65</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+386')"><i>Slovenia</i><span>+386</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+421')"><i>Slovakia</i><span>+421</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+66')"><i>Thailand</i><span>+66</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+216')"><i>Tunisia</i><span>+216</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+90')"><i>Turkey</i><span>+90</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+886')"><i>Taiwan</i><span>+886</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+255')"><i>Tanzania</i><span>+255</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+380')"><i>Ukraine</i><span>+380</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+1')"><i>United States of America</i><span>+1</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+598')"><i>Uruguay</i><span>+598</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+998')"><i>Uzbekistan</i><span>+998</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+84')"><i>Viet Nam</i><span>+84</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+678')"><i>Vanuatu</i><span>+678</span>
                                        </li>
                                        <li onclick="set_country_registration_dialing_code('+27')"><i>South Africa</i><span>+27</span>
                                        </li>
                                    </ul>
                                </div>

                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control" name="user_register_password" id="user_register_password"
                                    placeholder="Password">
                            </div>
                            <div class="form-group mb-0">
                                <input type="password" class="form-control" name="user_register_confirm_password"
                                    id="user_register_confirm_password" placeholder="Confirm Password">
                            </div>
                            <div class="input-group mt-3 mb-3 privacy-check">
                                <label class="custom-check">
                                    I acknowledge and accept the Data Protection Declaration Required <a href="#">Read more</a>
                                    <input type="checkbox" id="terms_1" value="1">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                            <div class="input-group mt-3 mb-3 privacy-check">
                                <label class="custom-check">
                                    I acknowledge and accept the General Terms and Conditions Required <a href="#">Read more</a>
                                    <input type="checkbox" id="terms_2" value="2">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                            <div class="input-group mt-3 mb-3 privacy-check">
                                <div class="g-recaptcha" id="recaptcha_1"></div>
                                <div id="recaptcha_1_error" class="text-danger"></div>
                            </div>
                            <div class="submit-btn">
                                <button type="button" id="user_registration_submit" class="btn submit_button">Submit</button>
                            </div>
                            <div class="login-bottom">
                                <h5>Already have an account?</h5>
                                <a href="#" class="login-click">Login here</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade global-modal" id="forgotpass-modal">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <button class="close btn" data-toggle="modal" data-target="#forgotpass-modal">
                        <img src="Images/cancel.png"></button>
                    <div class="modal-body">
                        <div class="login-body" id="login">
                            <h4>Forgot Password</h4>
                            <div id="user_forgot_response"></div>
                            <div class="form-group">
                                <input type="text" class="form-control" name="user_forgot_email" id="user_forgot_email"
                                    placeholder="Enter Email Address">
                            </div>
                            <div class="submit-btn">
                                <button type="button" id="user_forgot_submit" class="btn submit_button">Submit</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade global-modal" id="hourly-booking-modal">
            <div class="modal-dialog modal-lg modal-dialog-centered">
                <div class="modal-content">
                    <button class="close btn" data-toggle="modal" data-target="#hourly-booking-modal">
                        <img src="Images/cancel.png"></button>
                    <div class="modal-body">
                        <div class="login-body" id="login">
                            <h4>Login</h4>
                            <div class="container banner-text">
                                <div class="banner-from">
                                    <h3>Book Premium Limousine
                                <br />
                                        Service With Chauffeur</h3>

                                    <div class="booking-form">
                                        <div class="tabs-contents">
                                            <div class="form-wrapper">
                                                <div class="booking-wrapper">
                                                    <div class="main-options">
                                                        <input type="hidden" id="hourly_booking_source_lat" name="ride_source_lat">
                                                        <input type="hidden" id="hourly_booking_source_lng" name="ride_source_lng">
                                                        <input type="hidden" id="hourly_booking_destination_lat" name="ride_destination_lat">
                                                        <input type="hidden" id="hourly_booking_destination_lng" name="ride_destination_lng">
                                                        <input type="hidden" id="hourly_booking_code" name="ride_country_code">
                                                        <div class="bookinkg-fields">
                                                            <div class="switch-fields">
                                                                <div class="input-field dropoff-point" id="ride_destination_location_label">
                                                                    <span class="icon">
                                                                        <img src="Images/destination.png"></span>
                                                                    <input type="text" id="hourly_booking_source_location" name="hourly_booking_source_location"
                                                                        class="form-control" placeholder="Destination" autocomplete="off">
                                                                    <i class="close-search ride_destination">X</i>
                                                                    <ul id="hourly_booking_source_location_list"></ul>
                                                                </div>
                                                                <div class="switch-icon">
                                                                    <img src="Images/switch-icon.png">
                                                                </div>
                                                                <div class="input-field dropoff-point" id="ride_destination_location_label">
                                                                    <span class="icon">
                                                                        <img src="Images/destination.png"></span>
                                                                    <input type="text" id="hourly_booking_destionation_location" name="hourly_booking_destionation_location"
                                                                        class="form-control" placeholder="Destination" autocomplete="off">
                                                                    <i class="close-search ride_destination">X</i>
                                                                    <ul id="hourly_booking_destionation_location_list"></ul>
                                                                </div>
                                                                <ul id="airport_terminal_suggestion_list"></ul>
                                                            </div>
                                                            <div class="nonswitch-fields">
                                                                <div class="input-field pickup-date" id="pickup_date_label">
                                                                    <span class="icon">
                                                                        <img src="Images/pickup-date.png"></span>
                                                                    <input type="text" class="form-control" id="pickup_date" name="pickup_date" placeholder="Pickup Date"
                                                                        autocomplete="off">
                                                                </div>
                                                                <div class="input-field pickup-time dropdown" id="pickup_time_label">
                                                                    <span class="icon">
                                                                        <img src="Images/pickup-time.png"></span>
                                                                    <input type="text" class="form-control dropdown-toggle" id="pickup_time" name="pickup_time"
                                                                        data-toggle="dropdown" placeholder="Pickup Time" autocomplete="off">
                                                                    <div class="dropdown-menu">
                                                                        <h6>Pickup Time</h6>
                                                                        <div class="select-box">
                                                                            <select class="form-control" id="select_hour">
                                                                                <option value="00">00 (12 am)</option>
                                                                                <option value="01">01 (1 am)</option>
                                                                                <option value="02">02 (2 am)</option>
                                                                                <option value="03">03 (3 am)</option>
                                                                                <option value="04">04 (4 am)</option>
                                                                                <option value="05">05 (5 am)</option>
                                                                                <option value="06">06 (6 am)</option>
                                                                                <option value="07">07 (7 am)</option>
                                                                                <option value="08">08 (8 am)</option>
                                                                                <option value="09">09 (9 am)</option>
                                                                                <option value="10">10 (10 am)</option>
                                                                                <option value="11">11 (11 am)</option>
                                                                                <option value="12">12 (12 pm)</option>
                                                                                <option value="13">13 (1 pm)</option>
                                                                                <option value="14">14 (2 pm)</option>
                                                                                <option value="15">15 (3 pm)</option>
                                                                                <option value="16">16 (4 pm)</option>
                                                                                <option value="17">17 (5 pm)</option>
                                                                                <option value="18">18 (6 pm)</option>
                                                                                <option value="19">19 (7 pm)</option>
                                                                                <option value="20">20 (8 pm)</option>
                                                                                <option value="21">21 (9 pm)</option>
                                                                                <option value="22">22 (10 pm)</option>
                                                                                <option value="23">23 (11 pm)</option>
                                                                            </select>
                                                                            <select class="form-control" id="select_minute">
                                                                                <option value="00">00</option>
                                                                                <option value="05">05</option>
                                                                                <option value="10">10</option>
                                                                                <option value="15">15</option>
                                                                                <option value="20">20</option>
                                                                                <option value="25">25</option>
                                                                                <option value="30">30</option>
                                                                                <option value="35">35</option>
                                                                                <option value="40">40</option>
                                                                                <option value="45">45</option>
                                                                                <option value="50">50</option>
                                                                                <option value="55">55</option>
                                                                            </select>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="input-field no-of-passengers" id="number_of_label">
                                                                    <span class="icon">
                                                                        <img src="Images/no-of-passengers.png"></span>
                                                                    <div class="select-passengers">
                                                                        <span class="TotalVal_p">1 </span>Passengers
                                                                    </div>
                                                                    <div class="add-passengers">
                                                                        <span class="icon">
                                                                            <img src="Images/no-of-passengers.png">
                                                                            Passengers</span>
                                                                        <div class="qtySelector text-center">
                                                                            <i class="fa fa-minus decreaseQty"></i>
                                                                            <input type="text" id="number_of_passenger" name="number_of_passenger" class="qtyValue"
                                                                                value="1" />
                                                                            <i class="fa fa-plus increaseQty"></i>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="nonswitch-fields">
                                                                <div class="input-field" id="name_label">
                                                                    <input type="text" class="form-control" id="name" name="name" placeholder="Name"
                                                                        autocomplete="off">
                                                                </div>
                                                                <div class="input-field" id="phone_label">
                                                                    <input type="text" class="form-control" id="phone" name="phone" placeholder="Phone"
                                                                        autocomplete="off">
                                                                </div>
                                                            </div>
                                                            <div class="nonswitch-fields">
                                                                <div class="input-field email" id="email_label">
                                                                    <input type="text" class="form-control" id="email" name="email" placeholder="Email Address"
                                                                        autocomplete="off">
                                                                </div>
                                                            </div>
                                                            <button type="submit" name="action" value="fetch_ride" class="btn search-ridebtn">
                                                                Search
                                                            your Ride</button>
                                                        </div>
                                                    </div>
                                                    <div class="more-options">
                                                        <div class="bookinkg-fields">
                                                            <div class="input-field return-date">
                                                                <span class="icon">
                                                                    <img src="Images/pickup-date.png"></span>
                                                                <input type="text" class="form-control picker-date" id="return_date" name="return_date"
                                                                    placeholder="Return Date">
                                                            </div>
                                                            <div class="input-field return-time">
                                                                <span class="icon">
                                                                    <img src="Images/pickup-time.png"></span>
                                                                <input type="text" class="form-control picker-time" id="return_time" name="return_time"
                                                                    placeholder="Return Time">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade global-modal" id="confirm-modal">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <button class="close btn" data-toggle="modal" data-target="#confirm-modal">
                        <img src="Images/cancel.png"></button>
                    <div class="modal-body confirm_model text-center">
                        <div class="login-body" id="login">
                            <h4>Confirm</h4>
                            <h5>Are you sure?<br>
                                you want to cancel this booking</h5>
                            <div class="submit-btn">
                                <button type="button" id="user_login_submit" class="btn submit_button">Yes</button>
                                <button type="button" id="user_login_submit" class="btn submit_button" data-toggle="modal"
                                    data-target="#confirm-modal">
                                    Cancel</button>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade form_sec global-modal" id="booking-enquiry-modal">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <h3>BOOKING ENQUIRY</h3>
                    <button class="close btn" data-toggle="modal" data-target="#booking-enquiry-modal">
                        <img src="Images/close-icon.png"></button>
                    <div class="modal-body confirm_model">
                        <div class="booking-enquiry-body">
                            <input type="hidden" id="ride_destination_lat" name="ride_destination_lat2">
                            <input type="hidden" id="ride_destination_lng" name="ride_destination_lng2">
                            <div class="form_atb">
                                <div class="atb-from row form_group">
                                    <div class="col-lg-6 col-md-6 ">
                                        <div class="input_block">
                                            <span>
                                                <img src="Images/pickup_icon.png" alt="" /></span>
                                            <input type="text" placeholder="Pickup From*" name="booking_enquiry_pick_up_from"
                                                id="booking_enquiry_pick_up_from" />
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 padding_left">
                                        <div class="input_block">
                                            <span>
                                                <img src="Images/pickup_icon.png" alt="" /></span>
                                            <input type="text" placeholder="Drop To*" name="booking_enquiry_drop_to" id="booking_enquiry_drop_to" />
                                        </div>
                                    </div>
                                    <div class="col-md-6 d-none">
                                        <div class="form-group ">
                                            <input type="text" name="booking_enquiry_flight_number" id="booking_enquiry_flight_number"
                                                class="form-control" placeholder="Flight Number">
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 ">
                                        <div class="input_block">
                                            <span>
                                                <img src="Images/name_icon.png" alt="" /></span>
                                            <input type="text" placeholder="First Name*" name="booking_enquiry_first_name" id="booking_enquiry_first_name" />
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 padding_left">
                                        <div class="input_block">
                                            <span>
                                                <img src="Images/name_icon.png" alt="" /></span>
                                            <input type="text" placeholder="Last Name*" name="booking_enquiry_last_name" id="booking_enquiry_last_name" />
                                        </div>
                                    </div>
                                </div>
                                <div class="atb-from2 row">
                                    <div class="col-lg-6 col-md-6 ">
                                        <div class="input_block">
                                            <span>
                                                <img src="Images/email_icon.png" alt="" /></span>
                                            <input type="text" placeholder="Email" id="booking_enquiry_email" name="booking_enquiry_email" />
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 padding_left">
                                        <div class="input_block">
                                            <span>
                                                <img src="Images/phone_icon.png" alt="" /></span>
                                            <input type="text" placeholder="Phone* +49 xxxxxxxxxx" name="booking_enquiry_phone"
                                                id="booking_enquiry_phone" />
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-4 ">
                                        <div class="input_block d-flex">
                                            <span>
                                                <img src="Images/name_icon.png" alt="" /></span>
                                            <select id="booking_enquiry_number_of_passenger" name="booking_enquiry_number_of_passenger">
                                                <option value="01">01 (Passengers)</option>
                                                <option value="02">02 (Passengers)</option>
                                                <option value="03">03 (Passengers)</option>
                                                <option value="04">04 (Passengers)</option>
                                                <option value="05">05 (Passengers)</option>
                                                <option value="06">06 (Passengers)</option>
                                                <option value="07">07 (Passengers)</option>
                                                <option value="08">08 (Passengers)</option>
                                                <option value="09">09 (Passengers)</option>
                                                <option value="10">10 (Passengers)</option>
                                                <option value="11">11 (Passengers)</option>
                                                <option value="12">12 (Passengers)</option>
                                                <option value="13">13 (Passengers)</option>
                                                <option value="14">14 (Passengers)</option>
                                                <option value="15">15 (Passengers)</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-4">
                                        <div class="input_block d-flex pad_input pickup-date" id="booking_enquiry_pickup_date_label">
                                            <input
                                                type="text"
                                                id="booking_enquiry_pickup_date"
                                                name="booking_enquiry_pickup_date"
                                                placeholder="Pickup Date"
                                                autocomplete="off" />
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-4 padding_left ">
                                        <div class="input_block d-flex">
                                            <span>
                                                <img src="Images/hours_icon.png" alt="" /></span>
                                            <select id="booking_enquiry_ride_time_hours" name="booking_enquiry_ride_time_hours">
                                                <option value="">Pickup Time</option>
                                                <option value="12:00 am">12:00 am</option>
                                                <option value="12:30 am">12:30 am</option>
                                                <option value="01:00 am">01:00 am</option>
                                                <option value="01:30 am">01:30 am</option>
                                                <option value="02:00 am">02:00 am</option>
                                                <option value="02:30 am">02:30 am</option>
                                                <option value="03:00 am">03:00 am</option>
                                                <option value="03:30 am">03:30 am</option>
                                                <option value="04:00 am">04:00 am</option>
                                                <option value="04:30 am">04:30 am</option>
                                                <option value="05:00 am">05:00 am</option>
                                                <option value="05:30 am">05:30 am</option>
                                                <option value="06:00 am">06:00 am</option>
                                                <option value="06:30 am">06:30 am</option>
                                                <option value="07:00 am">07:00 am</option>
                                                <option value="07:30 am">07:30 am</option>
                                                <option value="08:00 am">08:00 am</option>
                                                <option value="08:30 am">08:30 am</option>
                                                <option value="09:00 am">09:00 am</option>
                                                <option value="09:30 am">09:30 am</option>
                                                <option value="10:00 am">10:00 am</option>
                                                <option value="10:30 am">10:30 am</option>
                                                <option value="11:00 am">11:00 am</option>
                                                <option value="11:30 am">11:30 am</option>
                                                <option value="12:00 pm">12:00 pm</option>
                                                <option value="12:30 pm">12:30 pm</option>
                                                <option value="13:00 pm">13:00 pm</option>
                                                <option value="13:30 pm">13:30 pm</option>
                                                <option value="14:00 pm">14:00 pm</option>
                                                <option value="14:30 pm">14:30 pm</option>
                                                <option value="15:00 pm">15:00 pm</option>
                                                <option value="15:30 pm">15:30 pm</option>
                                                <option value="16:00 pm">16:00 pm</option>
                                                <option value="16:30 pm">16:30 pm</option>
                                                <option value="17:00 pm">17:00 pm</option>
                                                <option value="17:30 pm">17:30 pm</option>
                                                <option value="18:00 pm">18:00 pm</option>
                                                <option value="18:30 pm">18:30 pm</option>
                                                <option value="19:00 pm">19:00 pm</option>
                                                <option value="19:30 pm">19:30 pm</option>
                                                <option value="20:00 pm">20:00 pm</option>
                                                <option value="20:30 pm">20:30 pm</option>
                                                <option value="21:00 pm">21:00 pm</option>
                                                <option value="21:30 pm">21:30 pm</option>
                                                <option value="22:00 pm">22:00 pm</option>
                                                <option value="22:30 pm">22:30 pm</option>
                                                <option value="23:00 pm">23:00 pm</option>
                                                <option value="23:30 pm">23:30 pm</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-3 padding_left d-none">
                                        <div class="input_block d-flex">
                                            <span>
                                                <img src="Images/numdate_icon.png" alt="" /></span>
                                            <select id="booking_enquiry_ride_time_days" name="booking_enquiry_ride_time_days">
                                                <option value="">PickUp Time (Minute)</option>
                                                <option value="00">00 (min)</option>
                                                <option value="10">10 (min)</option>
                                                <option value="20">20 (min)</option>
                                                <option value="30">30 (min)</option>
                                                <option value="40">40 (min)</option>
                                                <option value="50">50 (min)</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12">
                                        <div class="input_block d-flex">
                                            <span>
                                                <img src="Images/car_icon.png" alt="" /></span>

                                            <select name="booking_enquiry_car_model" id="booking_enquiry_car_model">
                                                <option value="">Car Category</option>
                                                <option value="Economy">Economy</option>
                                                <option value="Business">Business</option>
                                                <option value="Luxary">Luxury</option>
                                                <option value="Bus Transportation">Bus Transportation</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12">
                                        <div class="input_block d-flex">
                                            <textarea
                                                name="booking_enquiry_special_note"
                                                id="booking_enquiry_special_note"
                                                cols="30"
                                                rows="4"
                                                placeholder="Special Notes"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12">
                                        <div class="input-group mt-2 mb-1 privacy-check">
                                            <label class="custom-check">
                                                I acknowledge and accept the Data Protection Declaration
              Required
              <a href="page/privacy-policy.html">Read more</a>
                                                <input type="checkbox" id="booking_enquiry_terms_1" value="1">
                                                <span class="checkmark" id="booking_enquiry_check_terms_1"></span>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12 mb-4">
                                        <div class="input-group mt-2 mb-1 privacy-check">
                                            <label class="custom-check">
                                                I acknowledge and accept the General Terms and Conditions
              Required
              <a href="page/privacy-policy.html">Read more</a>
                                                <input type="checkbox" id="booking_enquiry_terms_2" value="1">
                                                <span class="checkmark" id="booking_enquiry_check_terms_2"></span>
                                            </label>
                                        </div>
                                    </div>

                                    <div class="col-lg-6 col-md-6 col-sm-6 btn_flex">
                                        <div class="submit_btn">
                                            <button type="submit" id="booking_enquiry_submit" class="btn search-ridebtn">Submit</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </form>

</body>
</html>
