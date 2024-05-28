$(function(){
    $('#fullpage').fullpage({
        anchors: ['section1','section2','section3','section4'],
        afterRender: function() {
            var swiper = new Swiper('.swiper-container', {
                navigation: {
                    nextEl: '.swiper-button-next',
                    prevEl: '.swiper-button-prev',
                },
                effect: 'coverflow', // 커버플로우 효과 사용
                grabCursor: true,
                centeredSlides: true,
                slidesPerView: 'auto',
                coverflowEffect: {
                    rotate: 50, // 회전 각도
                    stretch: 0, // 슬라이드 간의 간격
                    depth: 100, // 3D 효과의 깊이
                    modifier: 1, // 효과 강도
                    slideShadows: true // 슬라이드 그림자
                },
                pagination: {
                    el: '.swiper-pagination', // 페이지네이션 요소 선택자
                },
            });
        }
    });
});

