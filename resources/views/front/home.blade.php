@extends('layouts.front')
@push('css')
<link rel="stylesheet" href="{{ asset('front/calc/commoncalculator.css') }}">
<link rel="stylesheet" href="{{ asset('front/calc/emicalculator.css') }}">
<link rel="stylesheet" href="{{ asset('front/calc/calcstyle.css') }}">
<link rel="stylesheet" href="{{ asset('front/css/custom.css') }}">
@endpush
@push('style-css')

@endpush
@section('content')
<!-- main section starts -->
<section id="hero-5" class=" hero-section bg--green-100">
    <div class="hero-overlay">
        <div class="container">
            <div class="row d-flex align-items-center">
                <div class="col-lg-6 col-md-6 col-12 text-center">
                    <div class="">
                        <img class="img-fluid r-12" src="{{ asset('front/images/img-18.png') }}" alt="image">
                    </div>
                </div>
            
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="hero-5-txt">
                        <h2 class="s-32 w-700">Helping You Achieve Financial <span class="color--green-500">Success with Confidence! </span></h2>
                        <p class="p-lg">Reach your financial goals the smart way with expert financial consultation and services delivered through a seamless online portal.</p>
                        <a href="{{ route('self.apply.main') }}" class="btn r-04 btn--theme hover--tra-black last-link">Self Apply</a>
                        <a href="{{ route('loan.agent.main') }}" class="btn r-04 btn--theme hover--tra-black last-link">Hire an Agent</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- main section ends -->

<div id="statistic-1" class=" bg--green-400 ct-03 py-50 statistic-section division">
    <div class="container">
        <div class="statistic-5-wrapper">
            <div class="row row-cols-2 row-cols-md-4">
                <div class="col sec-1">
                    <div id="sb-5-1" class="text-center">
                        <div class="statistic-block">
                            <div class="statistic-digit">
                                <h2 class="s-30 w-700 mb-10 text-white">
                                    <span class="count-element">5000</span></span>+
                                </h2>
                            </div>
                            <div class="statistic-txt">
                                <h5 class="s-16 w-500 text-white">Happy Customer</h5>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col sec-2">
                    <div id="sb-5-3" class="text-center">
                        <div class="statistic-block">
                            <div class="statistic-digit">
                                <h2 class="s-30 w-700 mb-10 text-white">
                                    <span class="count-element">3</span>CR+
                                </h2>
                            </div>
                            <div class="statistic-txt">
                                <h5 class="s-16 w-500 text-white">Disbursal</h5>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col sec-3">
                    <div id="sb-5-2" class="text-center">
                        <div class="statistic-block">
                            <div class="statistic-digit">
                                <h2 class="s-30 w-700 mb-10 text-white">
                                    <span class="count-element">10</span>+
                                </h2>
                            </div>
                            <div class="statistic-txt">
                                <h5 class="s-16 w-500 text-white">NBFC Partners</h5>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col sec-4">
                    <div id="sb-5-4" class="text-center">
                        <div class="statistic-block">
                            <div class="statistic-digit">
                                <h2 class="s-30 w-700 mb-10 text-white">
                                    <span class="count-element">100</span>%
                                </h2>
                            </div>
                            <div class="statistic-txt">
                                <h5 class="s-16 w-500 text-white">Digital Process</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<hr class="divider">

<!-- why loanzilla section starts -->
<section id="features-6" class="py-80 features-section division">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-10 col-lg-9">
                <div class="section-title mb-50">
                    <h2 class="s-28">Why <span class="color--green-500">loanzilla</span></h2>
                    <p class="s-16 color--grey">Here's What Makes Us Different. </p>
                </div>
            </div>
        </div>
      
        <div class="fbox-wrapper text-center">
            <div class="row row-cols-1 row-cols-md-2 row-cols-lg-4">
                <div class="col">
                    <div class="fbox-6 fb-1">
                        <div class="fbox-ico ico-55">
                            <div class="shape-ico color--theme">
                                <span class="flaticon-layers-1"></span>
                                <svg viewBox="0 0 200 200" xmlns="http://www.w3.org/2000/svg">
                                    <path
                                        d="M69.8,-23C76.3,-2.7,57.6,25.4,32.9,42.8C8.1,60.3,-22.7,67,-39.1,54.8C-55.5,42.7,-57.5,11.7,-48.6,-11.9C-39.7,-35.5,-19.8,-51.7,5.9,-53.6C31.7,-55.6,63.3,-43.2,69.8,-23Z"
                                        transform="translate(100 100)"></path>
                                </svg>
                            </div>
                        </div>
                        <div class="fbox-txt">
                            <h4 class="s-18 w-700">Tie-Up With Top NBFCs </h4>
                            <p>We collaborate with industry-leading NBFCs to provide you with a wide range of financial services. </p>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="fbox-6 fb-2">
                        <div class="fbox-ico ico-55">
                            <div class="shape-ico color--theme">
                                <span class="flaticon-computer-1"></span>
                                <svg viewBox="0 0 200 200" xmlns="http://www.w3.org/2000/svg">
                                    <path
                                        d="M69.8,-23C76.3,-2.7,57.6,25.4,32.9,42.8C8.1,60.3,-22.7,67,-39.1,54.8C-55.5,42.7,-57.5,11.7,-48.6,-11.9C-39.7,-35.5,-19.8,-51.7,5.9,-53.6C31.7,-55.6,63.3,-43.2,69.8,-23Z"
                                        transform="translate(100 100)"></path>
                                </svg>
                            </div>
                        </div>
                        <div class="fbox-txt">
                            <h4 class="s-18 w-700">100% Online Process</h4>
                            <p>Relax and begin your financial consultation process with a few simple clicks - without toiling around town. </p>
                        </div>

                    </div>
                </div>

                <div class="col">
                    <div class="fbox-6 fb-3">
                        <div class="fbox-ico ico-55">
                            <div class="shape-ico color--theme">
                                <span class="flaticon-click-1"></span>
                                <svg viewBox="0 0 200 200" xmlns="http://www.w3.org/2000/svg">
                                    <path
                                        d="M69.8,-23C76.3,-2.7,57.6,25.4,32.9,42.8C8.1,60.3,-22.7,67,-39.1,54.8C-55.5,42.7,-57.5,11.7,-48.6,-11.9C-39.7,-35.5,-19.8,-51.7,5.9,-53.6C31.7,-55.6,63.3,-43.2,69.8,-23Z"
                                        transform="translate(100 100)"></path>
                                </svg>
                            </div>
                        </div>

                        <div class="fbox-txt">
                            <h4 class="s-18 w-700">Expert Financial consultation</h4>
                            <p>Upscale your finances by leveraging our experienced in-house experts' insights, guidance, and strategies. </p>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="fbox-6 fb-4">
                        <div class="fbox-ico ico-55">
                            <div class="shape-ico color--theme">
                                <span class="flaticon-tech-support"></span>
                                <svg viewBox="0 0 200 200" xmlns="http://www.w3.org/2000/svg">
                                    <path
                                        d="M69.8,-23C76.3,-2.7,57.6,25.4,32.9,42.8C8.1,60.3,-22.7,67,-39.1,54.8C-55.5,42.7,-57.5,11.7,-48.6,-11.9C-39.7,-35.5,-19.8,-51.7,5.9,-53.6C31.7,-55.6,63.3,-43.2,69.8,-23Z"
                                        transform="translate(100 100)"></path>
                                </svg>
                            </div>
                        </div>
                        <div class="fbox-txt">
                            <h4 class="s-18 w-700">Personalized Tracking Portal</h4>
                            <p>Access relevant information instantly at your fingertips, so you can move forward with clarity and confidence.</p>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>

<section class="py-80 ct-02 content-section division bg--green-100" id="company">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-10 col-lg-9">
                <div class="section-title mb-40">
                    <h2 class="s-28">About <span class="color--green-500">Us!</span></h2>
                    <p class="s-16 color--grey">Guiding you towards smarter financial decisions.</p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="txt-block right-column">

                    <h5 class="w-700">Experience The Most Streamlined Digital Loan Process</h5>

                    <p class="">At Loanzila, we believe managing your finances should be clear, simple, and stress-free. As a trusted financial consultation and services company, we guide individuals through the loan process with personalized advice, clarity, and support at every step.</p>
                    
                    <p class="">Through our partnerships with multiple NBFCs, we provide access to a wide range of financial solutions, helping clients understand their options and take informed steps.</p>
                    <p class="">At Loanzila, we don’t just provide guidance – we help individuals make financial decisions with confidence and move closer to their dreams.</p>
                    <h5 class="w-700">Your Financial Success Is Our Purpose!</h5>
                    <ul class="simple-list">
                        <li class="list-item">
                            <p>We do not believe in a one-size-fits-all solution. Instead, we take the time to understand each person’s needs so they feel supported at every step.</p>
                        </li>
                        <li class="list-item">
                            <p class="mb-0">We keep the whole process very transparent and easy to understand, helping people move forward with clarity and confidence.</p>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="col-md-6">
                <div class="img-block left-column">
                    <img class="img-fluid r-12" src="{{ asset('front/images/img-02.png') }}" alt="content-image">
                </div>
            </div>
        </div>
    </div>
</section>

<section class="pt-100 ct-03 content-section division pb-100" id="plan">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-10 col-lg-9">
                <div class="section-title mb-40">
                    <h2 class="s-32 w-700">Empower Your Finances with a Strategic Approach</h2>
                    <p class="s-18 color--grey">Select the plan that fits your needs and goals.</p>
                </div>
            </div>
        </div>

        <div class="row d-flex align-items-center">
            <div class="col-md-6 col-lg-6 order-first order-md-2">
                <div class="img-block right-column ">
                    <img class="img-fluid r-12" src="{{ asset('front/images/img-14.png') }}" alt="content-image">
                </div>
            </div>

            <div class="col-md-6 col-lg-6 order-last order-md-2">
                <div class="txt-block left-column ">
                    <div class="border border-2 p-3 mb-2 rounded-3">
                        <h3 class="s-22 w-700 mb-2">Quick Self-Apply</h3>
                        <p class="mb-2">
                            Access top-quality digital loan consultation, quick login links, and exclusive personalized offers from our trusted NBFC partners.
                        </p>
                        <a href="{{ route('self.apply.main') }}"
                            class="btn r-04 btn--theme hover--tra-black">
                            Apply Now
                        </a>
                    </div>

                    <div class="border border-2 p-3 rounded-3">
                        <h3 class="s-22 w-700 mb-2">Hire Loan Agent</h3>
                        <p class="mb-2">
                            Let our experienced loan experts take care of the entire process while you enjoy a smooth and hassle-free loan experience.
                        </p>
                        <a href="{{ route('loan.agent.main') }}"
                            class="btn r-04 btn--theme hover--tra-black">
                            Apply Now
                        </a>
                    </div>

                </div>
            </div>
        </div>
    </div>
</section>

<section id="features-2" class="py-80 bg--green-100 features-section division">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-10 col-lg-9">
                <div class="section-title mb-40">
                    <h2 class="s-28">How it <span class="color--green-500">works!</span></h2>
                    <p class="s-16 color--grey">6 Easy Steps To Financial Success.</p>
                </div>
            </div>
        </div>

        <div class="fbox-wrapper text-center">
            <div class="row g-4 row-cols-1 row-cols-md-3 row-cols-lg-3">
                <div class="col d-flex">
                    <div class="fbox-7 fbox--hover bg--white-100 fb-1 r-12 h-100 w-100">
                        <div class="fbox-ico ico-50">
                            <div class="shape-ico color--theme">
                                <span class="flaticon-mobile-search"></span>
                            </div>
                        </div>
                        <div class="fbox-txt">
                            <p>Get started by entering your mobile number and bank-registered name.</p>
                        </div>
                    </div>
                </div>

                <div class="col d-flex">
                    <div class="fbox-7 fbox--hover bg--white-100 fb-1 r-12 h-100 w-100">
                        <div class="fbox-ico ico-50">
                            <div class="shape-ico color--theme">
                                <span class="flaticon-computer"></span>
                            </div>
                        </div>
                        <div class="fbox-txt">
                            <p>Complete the remaining details, and our automated system will check your eligibility and show any pre-approved loan offers available. This is not a final offer.</p>
                        </div>
                    </div>
                </div>

                <div class="col d-flex">
                    <div class="fbox-7 fbox--hover bg--white-100 fb-1 r-12 h-100 w-100">
                        <div class="fbox-ico ico-50">
                            <div class="shape-ico color--theme">
                                <span class="flaticon-credit-card"></span>
                            </div>
                        </div>
                        <div class="fbox-txt">
                            <p>Purchase our subscription plan to unlock access to the displayed pre-approved loan offers.</p>
                        </div>
                    </div>
                </div>

                <div class="col d-flex">
                    <div class="fbox-7 fbox--hover bg--white-100 fb-1 r-12 h-100 w-100">
                        <div class="fbox-ico ico-50">
                            <div class="shape-ico color--theme">
                                <span class="flaticon-time"></span>
                            </div>
                        </div>
                        <div class="fbox-txt">
                            <p>Within 24–48 hours, our login team will reach out for verification and guide you through submitting the required documents.</p>
                        </div>
                    </div>
                </div>

                <div class="col d-flex">
                    <div class="fbox-7 fbox--hover bg--white-100 fb-1 r-12 h-100 w-100">
                        <div class="fbox-ico ico-50">
                            <div class="shape-ico color--theme">
                                <span class="flaticon-check-1"></span>
                            </div>
                        </div>
                        <div class="fbox-txt">
                            <p>Your documents and profile will be verified by the NBFC in accordance with their terms and conditions.</p>
                        </div>
                    </div>
                </div>

                <div class="col d-flex">
                    <div class="fbox-7 fbox--hover bg--white-100 fb-1 r-12 h-100 w-100">
                        <div class="fbox-ico ico-50">
                            <div class="shape-ico color--theme">
                                <span class="flaticon-profits"></span>
                            </div>
                        </div>
                        <div class="fbox-txt">
                            <p>The final decision on loan sanction, approval, and disbursement will be made by the NBFC as per their rules and regulations.</p>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>
<!-- Quick and swift steps section end -->

<!-- eligibility calculator starts -->
<section id="features-21" class="py-80 features-section division">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-10 col-lg-10">
                <div class="section-title mb-40">
                    <h2 class="s-28">Calculate Your <span class="color--green-500">EMI in Seconds</span></h2>
                    <p class="s-16 color--grey">Plan your finances with more confidence! </p>
                </div>
            </div>
        </div>
        <div class="row p-30 bg--white-100 shadow border-grey-1 r-20">
            <div class="col-md-7 order-first order-md-2">
                <div id="emicalculatorinnerformwrapper">
                    <form id="emicalculatorform" class="comment-form">
                        <div class="form-horizontal" id="emicalculatorinnerform">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="row form-group lamount flex-display align-items-center">
                                        <label class="col-6 control-label s-18 w-500" for="loanamount">Loan amount</label>
                                        <div class="col-6">
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text color--purple-500">₹</span>
                                                    </div>
                                                    <input class="form-control custm-box w-400" id="loanamount" name="loanamount" value="10,00,000" type="text">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="loanamountslider"></div>
                                    <div id="loanamountsteps" class="steps">
                                        <span class="tick" style="left: 0%;">| <br>
                                            <span class="marker">50K</span>
                                        </span>
                                        <span class="tick d-none d-sm-block" style="left: 12.5%;">| <br>
                                            <span class="marker">10L</span>
                                        </span>
                                        <span class=tick style="left: 25%;">| <br>
                                            <span class=marker>20L</span>
                                        </span>
                                        <span class="tick d-none d-sm-block" style="left: 37.5%;">| <br>
                                            <span class="marker">30L</span>
                                        </span>
                                        <span class="tick" style="left: 50%;">| <br>
                                            <span class="marker">40L</span>
                                        </span>
                                        <span class="tick d-none d-sm-block" style="left: 62.5%;">| <br>
                                            <span class="marker">50L</span>
                                        </span>
                                        <span class="tick" style="left: 75%;">| <br>
                                            <span class="marker">60L</span>
                                        </span>
                                        <span class="tick d-none d-sm-block" style="left: 87.5%;">| <br>
                                            <span class="marker">70L</span>
                                        </span>
                                        <span class="tick" style="left: 100%;">| <br>
                                            <span class="marker">80L</span>
                                        </span>
                                    </div>
                                </div>
                                <div class="col-md-12 mt-100">
                                    <div class="row form-group lint flex-display align-items-center">
                                        <label class="col-6 s-18 w-500 control-label" for="loaninterest">Interest rate</label>
                                        <div class="col-6">
                                            <div class="input-group">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text">%</span>
                                                </div>
                                                <input class="form-control custm-box w-400" id="loaninterest" name="loaninterest" value="10.5" type="text">
                                            </div>
                                        </div>
                                    </div>
                                    <div id="loaninterestslider"></div>
                                    <div id="loanintereststeps" class="steps">
                                        <span class="tick" style="left: 0%;">| <br>
                                            <span class="marker">5</span>
                                        </span>
                                        <span class="tick" style="left: 16.67%;">| <br>
                                            <span class="marker">7.5</span>
                                        </span>
                                        <span class="tick" style="left: 33.34%;">| <br>
                                            <span class="marker">10</span>
                                        </span>
                                        <span class="tick" style="left: 50%;">| <br>
                                            <span class="marker">12.5</span>
                                        </span>
                                        <span class="tick" style="left: 66.67%;">| <br>
                                            <span class="marker">15</span>
                                        </span>
                                        <span class="tick" style="left: 83.34%;">| <br>
                                            <span class="marker">17.5</span>
                                        </span>
                                        <span class="tick" style="left: 100%;">| <br>
                                            <span class="marker">20</span>
                                        </span>
                                    </div>
                                </div>
                                <div class="col-md-12 mt-100">
                                    <div class="row form-group lterm flex-display align-items-center">
                                        <label class="col-6 s-18 w-500 control-label" for="loanterm">Select EMI option</label>
                                        <div class="col-6">
                                            <div class="loantermwrapper">
                                                <div class="input-group">
                                                    <div class="input-group-prepend d-none">
                                                        <label class="s-14 input-group-text">
                                                            <input type="radio" class="mr-5" name="loantenure" id="loanyears" value="loanyears" tabindex="4" autocomplete="off"><span class="s-14">Yr</span>
                                                        </label>
                                                    </div>
                                                    <input class="form-control custm-box-2 w-400" id="loanterm" name="loanterm" value="20" type="text">
                                                    <div class="input-group-prepend">
                                                        <label class="s-14 input-group-text months-input">
                                                            <input type="radio" class="mr-5 d-none" name="loantenure" id="loanmonths" value="loanmonths" tabindex="5" autocomplete="off" checked="checked">
                                                            <span class="s-14">Months</span>
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="loantermslider"></div>
                                    <div id="loantermsteps" class="steps">
                                        <span class="tick" style="left: 0%;">| <br>
                                            <span class="marker">0</span>
                                        </span>
                                        <span class="tick" style="left: 16.67%;">| <br>
                                            <span class="marker">5</span>
                                        </span>
                                        <span class="tick" style="left: 33.33%;">| <br>
                                            <span class="marker">10</span>
                                        </span>
                                        <span class="tick" style="left: 50%;">| <br>
                                            <span class="marker">15</span>
                                        </span>
                                        <span class="tick" style="left: 66.67%;">| <br>
                                            <span class="marker">20</span>
                                        </span>
                                        <span class="tick" style="left: 83.33%;">| <br>
                                            <span class="marker">25</span>
                                        </span>
                                        <span class="tick" style="left: 100%;">| <br>
                                            <span class="marker">30</span>
                                        </span>
                                    </div>
                                </div>
                                <!-- Loan Tenure slider section ends -->
                            </div>
                        </div>
                        <input id="loanproduct" name="loanproduct" value type="hidden">
                        <input id="loanstartdate" name="loanstartdate" value type="hidden">
                        <input id="loanyearformat" name="loanyearformat" value type="hidden">
                        <input id="loandata" name="loandata" value type="hidden">
                        <input id="calcversion" name="calcversion" value=4.0 type="hidden">
                    </form>
                    <div class="row gutter-left gutter-right d-none">
                        <div id="emipaymentsummary" class="col-sm-5 col-md-6 no-gutter-left no-gutter-right">
                            <div id="emiamount">
                                <h4>Loan EMI</h4>
                                <p>₹ <span>24,959</span>
                                </p>
                            </div>
                            <div id="emitotalinterest">
                                <h4>Total Interest Payable</h4>
                                <p>₹ <span>34,90,279</span>
                                </p>
                            </div>
                            <div id="emitotalamount" class="column-last">
                                <h4>Total Payment <br>(Principal + Interest) </h4>
                                <p>₹ <span>59,90,279</span>
                                </p>
                            </div>
                        </div>
                        <div id="emipiechart" class="d-none no-gutter-left no-gutter-right col-sm-7 col-md-6 highcharts-container"></div>
                    </div>
                </div>
            </div>
            {{-- display none graph and list of emi's start --}}
            <div id="emipaymentdetails" class="d-none">
                <form class="gutter-left gutter-right form-horizontal">
                    <div class="row form-group" id="emipaymentscheduleheader">
                        <label class="col-md-4 col-lg-5 control-label" for="startmonthyear">Schedule showing EMI payments starting from</label>
                        <div class="col-md-4 col-lg-3">
                            <div class="input-group">
                                <input class="form-control" id="startmonthyear" name="startmonthyear" value type="text">
                                <div class="input-group-append">
                                    <span class="input-group-text">
                                        <i class="far fa-calendar-alt"></i>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-lg-3 form-group lyearformat">
                            <select class="form-control" tabindex="15" name="yearformat" id="yearformat">
                                <option value="calendaryear" selected="selected">Calendar Year wise</option>
                                <option value="financialyear">Financial Year wise</option>
                            </select>
                        </div>
                    </div>
                </form>
                <div id="emibarchart" class="hidden-ts highcharts-container"></div>
                <div id="emipaymenttable"></div>
            </div>
            {{-- display none graph and list of emi's end --}}
            <div class="col-md-5 order-last order-md-2 emi-details">
                <div class="card">
                    <div class="card-body p-0">
                        <div class="p-4 text-center border-bottom">
                            <h6 class="card-title mb-3">Your monthly instalment:</h6>
                            <h2 class="mb-0 text-center s-40 color--purple-500" id="emiamount">₹<span>888</span></h2>
                        </div>
                        <div class="p-4">
                            <div class="d-flex justify-content-between mb-2">
                                <span class="text-muted s-15">Total interest</span>
                                <span id="emitotalinterest">₹<span>656</span></span>
                            </div>
                            <div class="d-flex justify-content-between mb-2">
                                <span class="text-muted s-15">Principal amount</span>
                                <span id="principalamount">₹<span>10,000</span></span>
                            </div>
                            <hr style="border:1px dashed grey">
                            <div class="d-flex justify-content-between mb-4">
                                <span class="s-16">Total amount</span>
                                <span id="emitotalamount">₹<span>10,000</span></span>
                            </div>
                            <a href="{{ route('loan.agent.main') }}" class="btn btn--green-400 hover--tra-black w-100">Apply for loan</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- eligibility calculator ends -->
{{--<hr class="divider">--}}

<!-- Testimonioals section starts -->
<section id="reviews-1" class="py-80 reviews-section">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12 col-lg-12">
                <div class="section-title mb-40">
                    <h2 class="s-28">Hear Directly From <span class="color--green-500">Our Customers</span></h2>
                    <p class="s-16 color--grey">The words that encourage us to do better.</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <!-- Testimonials carousel start  -->
                @include('partials.front.testimonials')
                <!-- Testimonials carousel end  -->
            </div>
        </div>
    </div>
</section>
<!-- Testimonioals section ends -->

<!-- Our Partners section start  -->
<section id="integrations-2" class="py-80 integrations-section">
    <div class="container">
        <div class="r-12 text-center">
            <div class="row justify-content-center">
                <div class="col-md-10 col-lg-10">
                    <div class="section-title mb-50">
                        <h2 class="s-28">Our <span class="color--green-500">NBFC Partners </span></h2>
                        <p class="s-16 color--grey">Working with the best to bring you the best.</p>
                    </div>
                </div>
            </div>
            @php
            $lists = nbfcsList();
            @endphp

            <div class="bank-crousel">
                <div class="row">
                    <div class="col text-center">
                        <div class="owl-carousel brands-carousel-6 emi-carousel">
                            {!! $lists['carousel'] !!}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Our Partners section end  -->

<!-- Contact Start -->
<section id="contact" class="py-80 bg--green-100">
    <div class="container">
        <div class="row align-items-center justify-content-center">
            <div class="col-lg-6 md-mb-50">
                <div class="sec-title2 mb-40">
                    <h2 class="s-28">Let's <span class="color--green-500">Connect! </span></h2>
                    <p class="description">Drop us a message, and our team will contact you shortly. </p>
                </div>
                <div class="row gy-3 gx-3">
                    <div class="col-lg-6 col-md-6 col-12">
                        <div class="address-item">
                            <div class="address-text">
                                <h6> Customer Support </h6>
                                <p class="address-txt"><a href="tel:{{ str_ireplace(" ","",env('COMPANY_MOBILE')) }}">{{ env('COMPANY_MOBILE') }}</a></p>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6 col-md-6 col-12">
                        <div class="address-item">
                            <div class="address-text">
                                <h6> Mail Us </h6>
                                <p class="address-txt"><a href="mailto:{{ str_ireplace(" ","",env('COMPANY_SUPPORT_MAIL')) }}">{{ env('COMPANY_SUPPORT_MAIL') }}</a></p>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6 col-md-6 col-12">
                        <div class="address-item">
                            <div class="address-text">
                                <h6> Address </h6>
                                <p class="address-txt">{{ env('COMPANY_ADDRESS') }}</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6 col-md-6 col-12">
                        <div class="address-item">
                            <div class="address-text">
                                <h6> Working Hours </h6>
                                <p class="address-txt">
                                    Monday to Saturday: 10:00 AM - 5:00 PM<br>
                                    Sunday: Closed</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6 py-md-0 py-4">
                <div class="h-100">
                    <div class="card shadow border h-100">
                        <div class="card-body">
                            <p class="w-400 mb-20">
                                Fill out the form below and you'll hear from us soon.
                            </p>
                            <form method="post" action="{{ route('front.contact.us.store') }}" class="contact-form career-form" enctype="multipart/form-data">
                                <div class="row gx-2 gy-2">
                                    <div class="col-md-6 col-sm-12">
                                        <div class="form-group form-floating s-15">
                                            <input id="form_name" name="fullname" type="text" class="form-control name mb-0" placeholder="">
                                            <label for="firstname">Full Name *</label>
                                        </div>
                                        @component('components.ajax-error',['field'=>'fullname'])@endcomponent
                                    </div>
                                    <div class="col-md-6 col-sm-12">
                                        <div class="form-group form-floating">
                                            <input id="form_mobile" type="text" name="mobile" class="numeric-input mb-0 form-control mobile" placeholder="" minlength="10" maxlength="10" inputmode="numeric">
                                            <label for="form_mobile">Mobile *</label>
                                        </div>
                                        @component('components.ajax-error',['field'=>'mobile'])@endcomponent
                                    </div>
                                    <div class="col-md-6 col-sm-12">
                                        <div class="form-group form-floating">
                                            <input id="form_email" type="email" name="email" class="mb-0 form-control email" placeholder="">
                                            <label for="form_email">Email *</label>
                                        </div>
                                        @component('components.ajax-error',['field'=>'email'])@endcomponent
                                    </div>
                                    <div class="col-md-6 col-sm-12">
                                        <div class="form-group form-floating">
                                            <input id="form_subject" type="text" name="subject" class="mb-0 form-control subject" placeholder="">
                                            <label for="form_subject">Subject *</label>
                                        </div>
                                        @component('components.ajax-error',['field'=>'subject'])@endcomponent
                                    </div>
                                    <div class="col-12">
                                        <div class="form-group form-floating">
                                            <textarea id="form_message" name="desc" class="mb-0 form-control message" placeholder="" style="height: 150px"></textarea>
                                            <label for="form_message">Message *</label>
                                        </div>
                                        @component('components.ajax-error',['field'=>'desc'])@endcomponent
                                    </div>
                                    <div class="col-12 text-center">
                                        <button type="submit" class="s-14 btn btn--green-400 hover--tra-black submit" id="submit-btn">Submit Request</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Contact End -->

{{-- Wlecome message modal show here --}}
@if($msg->status == 1)
<div class="modal fade myModal" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <div class="row p-3">
                    <p>{!! $msg->content ?? 'N/A' !!}</p>
                </div>
            </div>
        </div>
    </div>
</div>
@endif
@endsection

@push('script-src')
<script type="text/javascript" src="{{ asset('front/calc/calccore.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('front/calc/mouse.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('front/calc/slider.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('front/calc/commoncalculator.js') }}"></script>
<script type="text/javascript" src="{{ asset('front/calc/emicalculator.js') }}"></script>
@endpush

@push('scripts')
<script src="{{ asset('front/js/home.js') }}" type="text/javascript"></script>
@if($msg->status == 1)
<script>
    $(document).ready(function() {
        setTimeout(function() {
            $(".myModal:not(.auto-off)").modal("show");
        }, 3600);
    })
</script>
@endif

<script>
    const routes = {
        'selfapply': "{{ route('self.apply.send.otp') }}",
        'loan-agent': "{{ route('loan.agent.send.otp') }}"
    };

    document.addEventListener('DOMContentLoaded', () => {
        const faqs = document.querySelectorAll('#faq-container li');
        const loadMoreButton = document.getElementById('load-more-faq');
        const viewLessButton = document.getElementById('view-less-faq');
        let visibleCount = 5; // Number of FAQs initially shown
        const batchSize = 5; // Number of FAQs to show on each click

        // Initial setup: Show the first 7 FAQs
        faqs.forEach((faq, index) => {
            if (index >= visibleCount) {
                faq.style.display = 'none';
            }
        });

        // Event listener for Load More button
        loadMoreButton.addEventListener('click', () => {
            const hiddenFaqs = Array.from(faqs).filter(faq => faq.style.display === 'none');
            for (let i = 0; i < batchSize && i < hiddenFaqs.length; i++) {
                hiddenFaqs[i].style.display = 'list-item';
            }

            // Show the "View Less" button once more items are displayed
            if (hiddenFaqs.length > 0) {
                viewLessButton.style.display = 'inline-block';
            }

            // Hide the "Load More" button if no more FAQs to show
            if (hiddenFaqs.length <= batchSize) {
                loadMoreButton.style.display = 'none';
            }
        });

        // Event listener for View Less button
        viewLessButton.addEventListener('click', () => {
            faqs.forEach((faq, index) => {
                if (index >= visibleCount) {
                    faq.style.display = 'none';
                }
            });

            // Reset button visibility
            loadMoreButton.style.display = 'inline-block';
            viewLessButton.style.display = 'none';
        });
    });

    $(document).ready(function() {
        $(".contact-form").submit(function(e) {
            let status = document.activeElement.innerHTML;
            e.preventDefault();
            if (status) {
                $('.ajax-error').html('');
                let data = new FormData(this);
                $.ajax({
                    url: $(this).attr("action"),
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    type: 'POST',
                    data: data,
                    processData: false,
                    contentType: false,
                    beforeSend: function() {
                        $("#submit-btn").html('<span class="spinner-border spinner-border-sm"></span> Submit Request ')
                        $("#submit-btn").attr('disabled', true);
                    },
                    success: function(result) {
                        $(this).attr("disabled", false);
                        if (result.type === 'SUCCESS') {
                            toastr.success(result.message);
                            setTimeout(function() {
                                location.reload();
                            }, 3000);
                        } else {
                            toastr.error(result.message);
                            $('#submit-btn').html('Submit Request');
                            $('#submit-btn').attr('disabled', false);
                        }
                    },
                    error: function(error) {
                        $(this).attr("disabled", false);
                        let errors = error.responseJSON.errors,
                            errorsHtml = '';
                        $.each(errors, function(key, value) {
                            errorsHtml = '<strong>' + value[0] + '</strong>';
                            $('.' + key).html(errorsHtml);
                        });
                        $('#submit-btn').html('Submit Request');
                        $('#submit-btn').attr('disabled', false);
                    }
                });
            }
        });
    });
</script>
@endpush