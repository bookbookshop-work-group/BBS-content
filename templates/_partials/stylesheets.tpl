<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">


<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">


<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">


<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/8.0.6/swiper-bundle.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.8/css/intlTelInput.css" />
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.css">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/jquery.steps@1.1.1/dist/jquery-steps.min.css">

{foreach $stylesheets.external as $stylesheet}
    <link rel="stylesheet" href="{$stylesheet.uri}" type="text/css" media="{$stylesheet.media}">
  {/foreach}
  
  {foreach $stylesheets.inline as $stylesheet}
    <style>
      {$stylesheet.content}
    </style>
  {/foreach}
  

<style>
    .portfolio_slider_ul{
        margin-left: 15px;
        margin-right: 15px;
    }
</style>

<style>
    .portfolio_slider ul li
    {
    margin-left: 10px !important;
    margin-right: 10px !important;
    }
</style>


<!-- FONTS -->
<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:100,300,400,400italic,700">
<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Patua+One:100,300,400,400italic,700">

<!-- CSS -->
<link rel="stylesheet" href="{$urls.css_url}bbs.css">
<link rel="stylesheet" href="{$urls.css_url}toast.css">
<link rel="stylesheet" href="{$urls.css_url}global.css">

<link rel="stylesheet" href="{$urls.css_url}structure.css">
<link rel="stylesheet" id='style-static' href="{$urls.css_url}be_style.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- Revolution Slider -->
<link rel="stylesheet" href="{$urls.theme_assets}rs-plugin/css/settings.css">





