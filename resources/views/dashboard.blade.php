@extends('layouts.dashboard')

@section('contenido')
    {{-- contenido --}}
    <div class="row">
        <div class="col-xl-8">
            <div class="breadcrumb_content mb50">
                <h2 class="breadcrumb_title">Hola, {{auth()->user()->name}}!</h2>
                <p>Este es un resumén de tu concesionaria.</p>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-6 col-lg-4">
            <div class="ff_one">
                <div class="icon"><span class="flaticon-list"></span></div>
                <div class="detais text-end">
                    <div class="timer">1260</div>
                    <p class="para">Total Listing</p>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-lg-4">
            <div class="ff_one style2">
                <div class="icon"><span class="flaticon-message"></span></div>
                <div class="detais text-end">
                    <div class="timer">74</div>
                    <p class="para">Messages</p>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-lg-4">
            <div class="ff_one style3">
                <div class="icon"><span class="flaticon-heart"></span></div>
                <div class="detais text-end">
                    <div class="timer">20</div>
                    <p class="para">Favorites</p>
                </div>
            </div>
        </div>
    </div>
    {{-- <div class="row">
        <div class="col-lg-12 col-xl-7">
            <div class="application_statics">
                <h4>Your Profile Views</h4>
                <div class="c_container"></div>
            </div>
        </div>
        <div class="col-xl-5">
            <div class="recent_job_activity">
                <h4 class="title">Recent Activities</h4>
                <div class="grid d-block d-sm-flex">
                    <div class="icon blue"><span><img src="images/icon/briefcase-blue.svg"
                                alt="briefcase-blue.svg"></span></div>
                    <p class="mb0"><span class="heading-color">Wade Warren</span> add
                        list for a car <span class="color-blue">Audi a3 Sportback 2020</span>
                    </p>
                </div>
                <div class="grid d-block d-sm-flex">
                    <div class="icon blue"><span><img src="images/icon/briefcase-blue.svg"
                                alt="briefcase-blue.svg"></span></div>
                    <p class="mb0"><span class="heading-color">Wade Warren</span> add
                        list for a car <span class="color-blue">Audi a5 Sportback 2020</span>
                    </p>
                </div>
                <div class="grid d-block d-sm-flex">
                    <div class="icon green"><span><img src="images/icon/briefcase-green.svg"
                                alt="briefcase-green.svg"></span></div>
                    <p><span class="heading-color">Wade Warren</span> Saved for a car Mercedes cla
                        2021</p>
                </div>
                <div class="grid d-block d-sm-flex">
                    <div class="icon blue"><span><img src="images/icon/briefcase-blue.svg"
                                alt="briefcase-blue.svg"></span></div>
                    <p><span class="heading-color">Wade Warren</span> add list for a car <span class="color-blue">Audi
                            q5 Sportback 2020</span></p>
                </div>
                <div class="grid d-block d-sm-flex">
                    <div class="icon green"><span><img src="images/icon/briefcase-green.svg"
                                alt="briefcase-green.svg"></span></div>
                    <p><span class="heading-color">Wade Warren</span> Saved for a car Mercedes
                        c-class 2021</span></p>
                </div>
                <div class="grid d-block d-sm-flex">
                    <div class="icon blue"><span><img src="images/icon/briefcase-blue.svg"
                                alt="briefcase-blue.svg"></span></div>
                    <p><span class="heading-color">Wade Warren</span> add list for a car <span class="color-blue">Audi
                            a3 Sportback 2020</span></p>
                </div>
            </div>
        </div>
    </div> --}}

    {{-- fin contenido --}}
@stop
