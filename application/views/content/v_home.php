<!-- About Start -->
<div class="container-xxl about" id="about">
    <div class="container pt-5 pb-3 px-lg-5">
        <div class="row">
            <div class="col-xl-4 col-lg-5 col-md-5 col-sm-7 col-7">
                <div class="text-heading text-start position-relative">
                    <h1>About <span class="txt-blue">Us</span></h1>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="about-us">
                    <?= $website->description; ?>
                </div>
            </div>
            <div class="col-lg-6">

                <div class="slider-container">
                    <div class="swiper-container about-slider ">
                        <div class="swiper-wrapper">
                            <?php foreach ($about_slider as $a) { ?>
                            <div class="swiper-slide">
                                <div class="box-img">
                                    <img src="https://admin103.mitramentayalogistics.com/upload/about/<?= $a->image; ?>"
                                        class="img-fluid" alt="">
                                </div>
                            </div>
                            <?php } ?>
                        </div>
                        <div class="swiper-pagination"></div>

                    </div>
                </div>

            </div>
        </div>

    </div>
</div>
<!-- About End -->

<div class="container-xxl why-us" id="why-us">
    <div class="container px-lg-5">
        <div class="row d-flex align-items-center justify-content-center">
            <div class="col-xl-4 col-lg-5 col-md-5 col-sm-7 col-7">
                <div class="text-heading text-center position-relative">
                    <h1>Why <span class="txt-blue">us</span></h1>
                </div>
            </div>
        </div>
        <div class="deskripsi text-center mt-4">
            <?= $website->why_us; ?>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="d-sm-flex">
                    <?php foreach ($why as $w) { ?>
                    <div class="fitur-item flex-sm-fill p-md-1 p-lg-4 mt-4 mt-sm-0 text-center">
                        <img src="https://admin103.mitramentayalogistics.com/upload/why_us/<?= $w->image; ?>"
                            class="img-fluid" alt="">
                        <p><?= $w->title; ?></p>
                    </div>
                    <?php } ?>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container-xxl penawaran">
    <div class="container py-4 px-lg-5">
        <div class="row justify-content-between">
            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-12">
                <h2 class="text-white fw-bold">PENAWARAN SPECIAL</h2>
                <a href="https://wa.wizard.id/b5e72c" target="_blank"
                    class="btn py-3 px-4 px-md-2 px-lg-4 rounded-2 mt-3 fw-bolder bg-yellow">Dapatkan
                    Penawaran</a>
            </div>
            <div class="col-xl-6 col-lg-6 col-md-7 col-sm-12 text-white mt-5 mt-md-0">
                <?= $website->penawaran; ?>
                <div class="d-lg-flex d-block mt-3 mt-md-5">
                    <?php
                    $number = $website->phone;
                    $n1 = substr($number, 1, 3);
                    $n2 = substr($number, 4, 4);
                    $n3 = substr($number, 8, 4);
                    $wa = $n1 . ' ' . $n2 . ' ' . $n3;
                    ?>
                    <a href="https://wa.wizard.id/b5e72c" target="_blank" class="text-white fw-bold">+62 <?= $wa; ?></a>
                    <a href="" class="text-white ms-4"><?= $website->email; ?></a>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container-xxl our-services px-0" id="services">
    <div class="container py-5 px-lg-5">
        <div class="row d-flex align-items-center justify-content-center">
            <div class="col-xl-5 col-lg-6 col-md-6 col-sm-7 col-9">
                <div class="text-heading text-center position-relative">
                    <h1>Our <span class="txt-blue">Services</span></h1>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="slider-container" style="height: 100%;">
                    <div class="swiper-container services-slider" style="height: 100%;">
                        <div class="swiper-wrapper">

                            <?php foreach ($service as $s) { ?>
                            <div class="swiper-slide">
                                <div class="service-box p-5 p-sm-3 py-md-5 px-md-4 ">
                                    <center>
                                        <div class="box-img d-flex justify-content-center align-items-center mb-5">
                                            <img src="https://admin103.mitramentayalogistics.com/upload/service/<?= $s->image; ?>"
                                                class="img-fluid" alt="">
                                        </div>
                                    </center>
                                    <h5 class="title my-4 text-uppercase fw-bold"><?= $s->title; ?></h5>
                                    <p><?= $s->deskripsi; ?></p>
                                    <div class="btn-klik bg-blue mt-5 py-2 px-2 px-sm-4 rounded-pill">
                                        <a href="https://wa.wizard.id/b5e72c" target="_blank"
                                            class="text-white">Dapatkan Penawaran</a>
                                    </div>
                                </div>
                            </div>
                            <?php } ?>
                        </div>
                        <div class="swiper-button-next"></div>
                        <div class="swiper-button-prev"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container-xxl testimoni px-0" id="testimoni">
    <div class="container py-5 px-lg-5">
        <div class="row d-flex align-items-center justify-content-center">
            <div class="col-xl-4 col-lg-5 col-md-5 col-sm-7 col-7">
                <div class="text-heading text-center position-relative">
                    <h1 class="txt-blue">TESTIMONI</h1>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="slider-container" style="height: 100%;">
                    <div class="swiper-container testimoni-slider" style="height: 100%;">
                        <div class="swiper-wrapper">
                            <?php foreach ($testi as $t) { ?>
                            <div class="swiper-slide">
                                <div class="testi-box p-4">
                                    <div class="box-profil d-flex align-items-center">
                                        <div class="box-img d-flex justify-content-center align-items-center">
                                            <img src="https://admin103.mitramentayalogistics.com/upload/testimoni/<?= $t->image; ?>"
                                                class="img-fluid" alt="">
                                        </div>
                                        <div class="profil ms-3">
                                            <p class="mb-0 fw-bold"><?= $t->nama; ?></p>
                                            <small><?= $t->title; ?></small>
                                        </div>
                                    </div>
                                    <div class="testi mt-3">
                                        <?= $t->testi; ?>
                                    </div>
                                </div>
                            </div>
                            <?php } ?>
                        </div>
                        <div class="swiper-button-next"></div>
                        <div class="swiper-button-prev"></div>
                    </div>
                </div>


            </div>
        </div>
    </div>
</div>

<div class="container-xxl gallery px-0" id="services">
    <div class="container py-5 px-lg-5">
        <div class="row justify-content-center align-items-center">
            <div class="col-lg-6 col-md-6 col-sm-12 mt-5 mt-md-0">
                <div class="text-heading text-center">
                    <h1 class="text-white">Galleries</h1>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="slider-container">
                    <div class="swiper-container gallery-slider">
                        <div class="swiper-wrapper">
                            <?php foreach ($gallery as $g) { ?>
                            <div class="swiper-slide">
                                <div class="box-img">
                                    <img src="https://admin103.mitramentayalogistics.com/upload/gallery/<?= $g->image; ?>"
                                        title="<?= $g->name; ?>" class="img-fluid" alt="">
                                </div>
                            </div>
                            <?php } ?>
                        </div>
                        <div class="swiper-pagination"></div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
<div class="container-xxl clients px-0" id="services">
    <div class="container py-0 px-lg-5">
        <div class="row justify-content-center align-items-center">
            <div class="col-lg-6 col-md-6 col-sm-12 mt-5 mt-md-0">
                <div class="text-heading text-center">
                    <h1 class="text-white">Our Clients</h1>
                </div>
            </div>
        </div>
        <div class="client">
            <div class="row">
                <div class="col-lg-12">
                    <div class="slider-container">
                        <div class="swiper-container client-slider">
                            <div class="swiper-wrapper">
                                <?php foreach ($client as $c) { ?>
                                <div class="swiper-slide">
                                    <div class="box-img text-center">
                                        <img src="https://admin103.mitramentayalogistics.com/upload/client/<?= $c->image; ?>"
                                            title="<?= $c->nama; ?>" class="img-fluid" alt="">
                                    </div>
                                </div>
                                <?php } ?>
                            </div>
                            <div class="swiper-button-next"></div>
                            <div class="swiper-button-prev"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>