<?php echo $header; ?>

<div class="left-panel-wrapper">

  <!-- TODO: вывести по-умному

        -->


  <div id="logo">
    <a href="http://mao.reclamare.ua/index.php?route=common/home"><img src="http://mao.reclamare.ua/image/catalog/logo-main.png" title="Your Store" alt="Your Store" class="img-responsive" /></a>
  </div>

	<div class="panel-light">
		<div class="" style="position: relative;">
			<div class="nav-menu-wrapper">
				<a href="#" class="dropdown-toggle catalog-opening-link" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> Каталог товаров  <i class="fa fa-angle-down"></i>
				</a>
				<nav id="menu2" class="dropdown-menu nav-menu">
					<ul class="nav">
						<li class="has-submenu">
							<a href="http://mao.reclamare.ua/desktops" class="">Great Wall</a>
							<div class="submenu panel-light">
								<ul class="list-unstyled">

								</ul>
							</div>
						</li>

						<li class="has-submenu">
							<a href="http://mao.reclamare.ua/laptop-notebook" class="">Lifan</a>
							<div class="submenu panel-light">
								<ul class="list-unstyled">


								</ul>
							</div>
						</li>

						<li class="has-submenu">
							<a href="http://mao.reclamare.ua/component" class="">Chery</a>
							<div class="submenu panel-light">
								<ul class="list-unstyled">
									<li><a href="http://mao.reclamare.ua/index.php?route=product/category&amp;path=25_59">Chery A13 / Zaz Forza (0)</a></li>
									<li><a href="http://mao.reclamare.ua/index.php?route=product/category&amp;path=25_61">Chery Cross Eastar (B14) (0)</a></li>
									<li><a href="http://mao.reclamare.ua/index.php?route=product/category&amp;path=25_62">Chery Eastar (B11) (0)</a></li>
									<li><a href="http://mao.reclamare.ua/index.php?route=product/category&amp;path=25_63">Chery Jaggi (0)</a></li>
									<li><a href="http://mao.reclamare.ua/index.php?route=product/category&amp;path=25_60">Chery M11 (0)</a></li>
									<li><a href="http://mao.reclamare.ua/component/mouse">Chery Amulet (A11-A15) (0)</a></li>
									<li><a href="http://mao.reclamare.ua/component/scanner">Chery Elara (Fora) (A21) (0)</a></li>
									<li><a href="http://mao.reclamare.ua/component/web-camera">Chery Kimo (S12 ) (0)</a></li>
									<li><a href="http://mao.reclamare.ua/component/monitor">Chery QQ (S11) (2)</a></li>
									<li><a href="http://mao.reclamare.ua/component/printer">Chery Tiggo (T11) (0)</a></li>
								</ul>
							</div>
						</li>

						<li class="has-submenu">
							<a href="http://mao.reclamare.ua/tablet" class="">Kia</a>
							<div class="submenu panel-light">
								<ul class="list-unstyled">

								</ul>
							</div>
						</li>

						<li class="has-submenu">
							<a href="http://mao.reclamare.ua/software" class="">Hyundai</a>
							<div class="submenu panel-light">
								<ul class="list-unstyled">


								</ul>
							</div>
						</li>




						<li class="has-submenu">
							<a href="http://mao.reclamare.ua/smartphone" class="">Chevrolet</a>
							<div class="submenu panel-light">
								<ul class="list-unstyled">

								</ul>
							</div>
						</li>

						<li class="has-submenu">
							<a href="http://mao.reclamare.ua/camera" class="">BYD</a>
							<div class="submenu panel-light">
								<ul class="list-unstyled">


								</ul>
							</div>
						</li>

						<li class="has-submenu">
							<a href="http://mao.reclamare.ua/mp3-players" class="">Daewoo</a>
							<div class="submenu panel-light">
								<ul class="list-unstyled">

								</ul>
							</div>
						</li>
					</ul>
				</nav>
			</div>
		</div>
	</div>

</div>

<div class="map-wrapper container-fluid">
        <div id="content">
          <div id="map_canvas"></div>
        </div>
	<div class="row">
        <div class="map-legend col-xs-12 col-sm-6">
          <ul class="" id="myTab">
            <li  id="link1" class="active">
              <span>ул. Автозаводская, 76 (СТО)</span>
            </li>
            <li id="link2">
              <span>Воздухофлотский проспект, 56 (район Севастопольской площади)</span>
            </li>
            <li id="link3">
              <span>ул. И. Микитенко, 11</span>
            </li>
          </ul>
          <div class="tab-content hidden">
            <div class="tab-pane active" id="office">
              <p>Contact 1</p>
              <p>Address 1</p>
            </div>
            <div class="tab-pane" id="rnd">
              <p>Contact 2</p>
              <p>Address 2</p>
            </div>
            <div class="tab-pane" id="lol">
              <p>Contact 3</p>
              <p>Address 3</p>
            </div>
          </div>
        </div>
        <div class="contact-form-wrapper col-xs-12 col-sm-6">
          <h2>Напишите нам</h2>
          <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
            <fieldset>
              <div class="form-group required col-xs-12 col-sm-8 col-md-6">
                <div class="">
                  <input type="text" name="name" value="<?php echo $name; ?>" id="input-name" class="form-control" placeholder="<?php echo $entry_name; ?>"/>
                  <?php if ($error_name) { ?>
                  <div class="text-danger"><?php echo $error_name; ?></div>
                  <?php } ?>
                </div>
              </div>
              <div class="form-group required col-xs-12 col-sm-8 col-md-6">
                <div class="">
                  <input type="text" name="email" value="<?php echo $email; ?>" id="input-email" class="form-control" placeholder="<?php echo $entry_email; ?>"/>
                  <?php if ($error_email) { ?>
                  <div class="text-danger"><?php echo $error_email; ?></div>
                  <?php } ?>
                </div>
              </div>
              <div class="form-group required col-sm-12">
                <div class="">
                  <textarea name="enquiry" rows="10" id="input-enquiry" class="form-control" placeholder="<?php echo $entry_enquiry; ?>"><?php echo $enquiry; ?></textarea>
                  <?php if ($error_enquiry) { ?>
                  <div class="text-danger"><?php echo $error_enquiry; ?></div>
                  <?php } ?>
                </div>
              </div>
              <?php echo $captcha; ?>
            </fieldset>
            <div class="buttons">
              <div class="pull-right">
                <input class="btn btn-hover btn-outline" type="submit" value="<?php echo $button_submit; ?>" />
              </div>
            </div>
          </form>
        </div>
	</div>
</div>

<script src="http://maps.googleapis.com/maps/api/js"></script>
  <script type="text/javascript">
    var marker;
    var map;

    $("#link1").click(function(){
      changeMarkerPos(50.5169344, 30.4530378);
    });
    $("#link2").click(function(){
      changeMarkerPos(50.4222325, 30.4537204);
    });
    $("#link3").click(function(){
      changeMarkerPos(50.4863449, 30.5976363);
    });

    function initialize() {
      var styledMap = new google.maps.StyledMapType({
        name: "Styled Map"
      });
      var mapProp = {
        center: new google.maps.LatLng(50.4680593, 30.5145277),
        zoom: 11,
        panControl: false,
        zoomControl: true,
        mapTypeControl: false,
        scaleControl: true,
        streetViewControl: false,
        overviewMapControl: false,
        rotateControl: true,
        scrollwheel: false,
        mapTypeId: google.maps.MapTypeId.ROADMAP
      };

      var pos1 = new google.maps.LatLng(50.5169344, 30.4530378);
      var pos2 = new google.maps.LatLng(50.4222325, 30.4537204);
      var pos3 = new google.maps.LatLng(50.4863449, 30.5976363);

      map = new google.maps.Map(document.getElementById("map_canvas"), mapProp);

      map.mapTypes.set('map_style', styledMap);
      map.setMapTypeId('map_style')

      //marker = new google.maps.Marker({
        //position: new google.maps.LatLng(50.4680593, 30.5145277),
        //animation: google.maps.Animation.DROP,
        //icon: './catalog/view/theme/default/image/marker.png'
      //});

		var marker = new google.maps.Marker({
			position: pos1,
			map: map,
			animation: google.maps.Animation.DROP,
			title: 'ул. Автозаводская, 76 (СТО)',
			icon: './catalog/view/theme/default/image/marker.png'
		});

      var marker1 = new google.maps.Marker({
        position: pos1,
        map: map,
        animation: google.maps.Animation.DROP,
        title: 'ул. Автозаводская, 76 (СТО)',
        icon: './catalog/view/theme/default/image/marker.png'
      });

      var marker2 = new google.maps.Marker({
        position: pos2,
        map: map,
        animation: google.maps.Animation.DROP,
        title: 'Воздухофлотский проспект, 56 (район Севастопольской площади)',
        icon: './catalog/view/theme/default/image/marker.png'
      });

      var marker3 = new google.maps.Marker({
        position: pos3,
        map: map,
        animation: google.maps.Animation.DROP,
        title: 'ул. И. Микитенко, 11',
        icon: './catalog/view/theme/default/image/marker.png'
      });

      marker.setMap(map);
      marker1.setMap(map);
      marker2.setMap(map);
      marker3.setMap(map);
      //map.panTo(marker.position);
    }

    function changeMarkerPos(lat, lon){
      myLatLng = new google.maps.LatLng(lat, lon)
      //marker.setPosition(myLatLng);
      map.panTo(myLatLng);
    }

    google.maps.event.addDomListener(window, 'load', initialize);

</script>

<?php echo $footer; ?>
