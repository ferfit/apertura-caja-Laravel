@extends('layouts.inicio')

@section('contenido')

        @include('includes.sidebar')

        @include('includes.header2')

        <!-- Our Contact -->
        <section class="our-contact p0 mt0 mt70-992">
            <div class="container-fluid p0">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="h600" id="map-canvas"></div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Our Contact -->
        <section class="our-contact inner_page_section_spacing bgc-f9">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="contact_icon_box mb50">
                            <div class="details">
                                <h3 class="title">Detalle de contacto</h3>
                                <h4>Sucursales</h4>
                                <p>Calle 47 y Lucas Funes, Reconquista Santa Fe</p>
                                <p>Iriondo y Hipolito Yrigoyen, Reconquista Santa Fe</p>
                                <h4 class="subtitle">+54 3482 313609</h4>
                                <p>hello@voiture.com</p>
                                <div class="footer_social_widget">
                                    <ul class="mb0">
                                        <li class="list-inline-item"><a href="https://www.facebook.com/Pereson-Consignaciones-104480548148002" target="_blank"><i class="fab fa-facebook-f"></i></a>
                                        </li>

                                        <li class="list-inline-item"><a href="https://www.instagram.com/peresonautomotores/?hl=es" target="_blank"><i class="fab fa-instagram"></i></a>
                                        </li>

                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="form_grid">
                            <div class="wrapper">
                                <h3 class="title mb20"></h3>
                                {{-- <form class="contact_form" name="contact_form" action="#" method="post" novalidate>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="form-label">First Name*</label>
                                                <input class="form-control" type="text" placeholder="TUF">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="form-label">Last Name*</label>
                                                <input class="form-control" type="text"
                                                    placeholder="creativelayers088@gmail.com">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="form-label">Email*</label>
                                                <input class="form-control email" type="email"
                                                    placeholder="+59 9495 393 939 3">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="form-label">Phone</label>
                                                <input class="form-control" type="text" placeholder="Message">
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label class="form-label">Message</label>
                                                <textarea name="form_message" class="form-control" rows="6"></textarea>
                                            </div>
                                            <div class="form-group mb0">
                                                <button type="button" class="btn btn-thm">Get In Touch</button>
                                            </div>
                                        </div>
                                    </div>
                                </form> --}}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

@stop

@section('js')
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAAz77U5XQuEME6TpftaMdX0bBelQxXRlM&callback=initMap"></script>
    <script src="{{asset('js/googlemaps1.js')}}"></script>
@stop
