<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title><?= $website->metaTitle; ?></title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta name="keywords" content="<?= $website->metaKeywords; ?>">
    <meta name="description" content="<?= $website->metaDescription; ?>">

    <!-- Favicon -->
    <link href="<?= base_url(); ?>assets/imagenew/logo-url.png" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>

    <!-- Icon Font Stylesheet -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">


    <!-- Libraries Stylesheet -->
    <link href="<?= base_url(); ?>assets/lib/animate/animate.min.css" rel="stylesheet">
    <link href="<?= base_url(); ?>assets/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="<?= base_url(); ?>assets/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="<?= base_url(); ?>assets/css/style.css" rel="stylesheet">
    <link href="<?= base_url(); ?>assets/css/swiper.css" rel="stylesheet">
    <link href="<?= base_url(); ?>assets/css/responsive.css" rel="stylesheet">
    <link href="<?= base_url(); ?>assets/css/whatsapp_chat.css" rel="stylesheet">
</head>

<body data-bs-spy="scroll" data-bs-target=".navbar" data-bs-offset="51">
    <div class="container-xxl bg-white p-0">
        <!-- Navbar & Hero Start -->
        <div class="container-xxl position-relative p-0" id="home">
            <div class="top_menu d-none d-lg-block">
                <div class="top-content d-flex align-items-center">
                    <div class="container">
                        <div class="row d-flex align-items-center">
                            <div class="col-lg-5 col-md-5">
                                <div class="float-right">
                                    <div class="d-flex top-social">
                                        <?php foreach ($sosmed as $sosmed) { ?>
                                        <a class="btn btn-outline-light btn-social" href="<?= $sosmed->link; ?>"
                                            title="<?= $sosmed->name; ?>"><i class="fa <?= $sosmed->icon; ?>"></i></a>
                                        <?php } ?>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-7 col-md-7">
                                <div class="address d-flex ms-5">
                                    <i class="fa fa-map-marker text-white"></i>
                                    <?= $website->address; ?>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <nav class="navbar navbar-expand-lg navbar-light px-4 px-lg-5 py-3 py-lg-0 mt-lg-4">
                <div class="container">
                    <a href="" class="navbar-brand p-0">
                        <!-- <h1 class="m-0">FitApp</h1> -->
                        <img class="img-fluid logo-hero"
                            src="https://admin103.mitramentayalogistics.com/upload/<?= $website->image; ?>" alt="Logo">
                        <img class="img-fluid logo-sticky" src="assets/imagenew/logo-sticky.svg" alt="Logo">
                    </a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarCollapse">
                        <span class="fa fa-bars"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarCollapse">
                        <div class="navbar-nav d-none ms-lg-0 ms-xl-5 py-0">
                            <a href="#home" class="nav-item nav-link active">HOME</a>
                            <a href="#about" class="nav-item nav-link">ABOUT US</a>
                            <a href="#why-us" class="nav-item nav-link">WHY US</a>
                            <a href="#services" class="nav-item nav-link">OUR SERVICES</a>
                            <a href="#client" class="nav-item nav-link">OUR CLIENTS</a>
                            <a href="#gallery" class="nav-item nav-link">OUR GALLERIES</a>
                        </div>
                        <div class="contact mt-3 mt-sm-0 d-flex ms-auto">
                            <div class="me-3 text-white text-start text-lg-end">
                                <?php
                                $number = $website->phone;
                                $n1 = substr($number, 1, 3);
                                $n2 = substr($number, 4, 4);
                                $n3 = substr($number, 8, 4);
                                $wa = $n1 . ' ' . $n2 . ' ' . $n3;
                                ?>
                                <p class="mb-0">Contact For Support</p>
                                <a href="https://wa.wizard.id/b5e72c" target="_blank" class="">+62 <?= $wa; ?></a>
                            </div>
                            <img class="img-fluid" src="assets/imagenew/telpon.svg" alt="">

                        </div>
                    </div>
                </div>
            </nav>

            <div class="container-xxl hero-header" id="home">
                <div class="container">
                    <div class="row">

                        <div class="col-xl-5 col-lg-4 col-md-3 col-sm-4 col-4">
                            <div class="navbar-nav ms-lg-0 ms-xl-5 py-0">
                                <a href="#home" class="nav-item nav-link active">HOME</a>
                                <a href="#about" class="nav-item nav-link">ABOUT US</a>
                                <a href="#why-us" class="nav-item nav-link">WHY US</a>
                                <a href="#services" class="nav-item nav-link">OUR SERVICES</a>
                                <a href="#client" class="nav-item nav-link">OUR CLIENTS</a>
                                <a href="#gallery" class="nav-item nav-link">OUR GALLERIES</a>
                            </div>
                        </div>
                        <div class="col-xl-7 col-lg-8 col-md-9 col-sm-8 col-8 text-end">
                            <h1 class="text-white mb-3 display-6"><?= $homeweb->title; ?></h1>
                            <p class="text-white mb-0"><?= $homeweb->deskripsi; ?></p>
                            <a href="https://wa.wizard.id/b5e72c" target="_blank"
                                class="btn py-3 px-4 px-md-2 px-lg-4 rounded-2 mt-3 fw-bolder bg-yellow ">Dapatkan
                                Penawaran</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container-xxl fitur" id="fitur">
                <div class="container px-lg-5">
                    <div class="row">
                        <?php foreach ($fitur as $f) { ?>
                        <div class="col-lg-3 col-md-6 col-sm-6 col-12 mt-4">
                            <div class="fitur-box">
                                <div class="d-flex align-items-center">
                                    <div class="fitur-img me-2 me-sm-4">
                                        <img src="https://admin103.mitramentayalogistics.com/upload/fitur/<?= $f->image; ?>"
                                            class="img-fluid" alt="">
                                    </div>
                                    <p class="mb-0"><?= $f->title; ?></p>
                                </div>
                            </div>
                        </div>
                        <?php } ?>
                    </div>
                </div>
            </div>
        </div>
        <!-- Navbar & Hero End -->