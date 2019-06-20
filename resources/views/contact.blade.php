@extends('layouts.main')

@section('content')

<section class="mb-4">

<!--Section heading-->
<h2 class="h1-responsive font-weight-bold text-center my-4">Contact ons</h2>
<!--Section description-->
<p class="text-center w-responsive mx-auto mb-5">Heeft u enige vragen, contacteer ons direct.</p>

<div class="row">

    <!--Grid column-->
    <div class="col-md-12 mb-md-0 mb-5">
        <form id="contact-form" name="contact-form" action="mail.php" method="POST">

            <!--Grid row-->
            <div class="row">

                <!--Grid column-->
                <div class="col-md-12">
                    <div class="md-form mb-0">
                    <label for="name" class="">Uw Naam</label>
                        <input type="text" id="name" name="name" class="form-control">
                    </div>
                </div>
                <!--Grid column-->

                <!--Grid column-->
                <div class="col-md-12"><br>
                    <div class="md-form mb-0">
                    <label for="email" class="">Uw Emailadres</label>
                        <input type="text" id="email" name="email" class="form-control">
                    </div>
                </div>
                <!--Grid column-->

            </div>
            <!--Grid row-->

            <!--Grid row-->
            <br>
            <div class="row">
                <div class="col-md-12">
                    <div class="md-form mb-0">
                    <label for="subject" class="">Onderwerp</label>
                        <input type="text" id="subject" name="subject" class="form-control">
                    </div>
                </div>
            </div><br>
            <!--Grid row-->

            <!--Grid row-->
            <div class="row">

                <!--Grid column-->
                <div class="col-md-12">

                    <div class="md-form">
                    <label for="message">Wat is uw vraag?</label>
                        <textarea type="text" id="message" name="message" rows="2" class="form-control md-textarea"></textarea>
                    </div>

                </div>
            </div>
            <!--Grid row-->

        </form><br>

        <div class="text-center text-md-left">
            <a class="btn btn-primary" onclick="document.getElementById('contact-form').submit();">Verzenden</a>
        </div>
        <div class="status"></div>
    </div>
    <!--Grid column-->


</div>


</section>


<div class="footer-copyright text-center py-3 footer-fixed-bottom">
   <!--Grid column-->
        <ul class="list-unstyled mb-0">
            <li><i class="fas fa-envelope mt-4 fa-2x"></i>
                    neem contact op met:
               <li><a href="mailto:rf.kremer@student.alfa-college.nl"> rf.kremer@student.alfa-college.nl </a> </li>
               <li> <a href="mailto:s.schneiders@student.alfa-college.nl"> s.schneiders@student.alfa-college.nl </a> </li>
               <li> <a href="mailto:b.korendijk@student.alfa-college.nl"> b.korendijk@student.alfa-college.nl </a> </li>
               <p> <a href="mailto:jj.mellema@student.alfa-college.nl"> jj.mellema@student.alfa-college.nl </a> </p>
            </li>

            addres gegevens:
            <li><i class="fas fa-map-marker-alt fa-2x"></i>
        <a href="https://www.google.com/maps/place/Boumaboulevard+573,+9723+ZS+Groningen/@53.2063675,6.5893825,17z/data=!4m5!3m4!1s0x47c82d4d1dd954b5:0x99e7d7bd77b0a695!8m2!3d53.2063804!4d6.5906163" target="_blank">
                Boumaboulevard 573, 9723 ZS Groningen, </a>
            </li>
            <i class="fas fa-phone mt-4 fa-2x"></i>
                <a href="tel:050 597 3000">050 597 3000</a>
        
        </ul>
    </div>

@endSection