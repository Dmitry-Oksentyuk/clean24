$(function () {
    $('.answer').hide();
    $('.question').click(function () {
        $(this).next().slideToggle({duration: 200});
    })
    $('.parallax-window').parallax({imageSrc: '../../images/fon_land.jpg'});

})
