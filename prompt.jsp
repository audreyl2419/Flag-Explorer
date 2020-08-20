<%--
  Created by IntelliJ IDEA.
  User: audreyliu
  Date: 2019-09-09
  Time: 15:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%= request.getAttribute("doctype") %>

<html>
<head>
	<title>World Flag</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<style>
	h1 {
		color: darkGrey;
		font-family: Courier;
		font-size: 300%;
		margin: 100px;
		padding: 30px;
		text-align: center;

	}
	nav  {
		color: lightGrey;
		font-family: Courier New;
		font-size: 160%;
		text-align: center;
	}
</style>
<body>
<h1>Please select a country to view: </h1>
<nav>
<form action="getWorldFlag" method="get">
	<select name="country_selector">
		<option value="">Please select a country to view</option>
		<option value="/geos/af.html" data-place-code="af">
			Afghanistan
		</option>
		<option value="/geos/ax.html" data-place-code="ax">
			Akrotiri
		</option>
		<option value="/geos/al.html" data-place-code="al">
			Albania
		</option>
		<option value="/geos/ag.html" data-place-code="ag">
			Algeria
		</option>
		<option value="/geos/an.html" data-place-code="an">
			Andorra
		</option>
		<option value="/geos/ao.html" data-place-code="ao">
			Angola
		</option>
		<option value="/geos/av.html" data-place-code="av">
			Anguilla
		</option>
		<option value="/geos/ac.html" data-place-code="ac">
			Antigua and Barbuda
		</option>
		<option value="/geos/ar.html" data-place-code="ar">
			Argentina
		</option>
		<option value="/geos/am.html" data-place-code="am">
			Armenia
		</option>
		<option value="/geos/aa.html" data-place-code="aa">
			Aruba
		</option>
		<option value="/geos/as.html" data-place-code="as">
			Australia
		</option>
		<option value="/geos/au.html" data-place-code="au">
			Austria
		</option>
		<option value="/geos/aj.html" data-place-code="aj">
			Azerbaijan
		</option>
		<option value="/geos/bf.html" data-place-code="bf">
			Bahamas, The
		</option>
		<option value="/geos/ba.html" data-place-code="ba">
			Bahrain
		</option>
		<option value="/geos/bg.html" data-place-code="bg">
			Bangladesh
		</option>
		<option value="/geos/bb.html" data-place-code="bb">
			Barbados
		</option>
		<option value="/geos/bo.html" data-place-code="bo">
			Belarus
		</option>
		<option value="/geos/be.html" data-place-code="be">
			Belgium
		</option>
		<option value="/geos/bh.html" data-place-code="bh">
			Belize
		</option>
		<option value="/geos/bn.html" data-place-code="bn">
			Benin
		</option>
		<option value="/geos/bd.html" data-place-code="bd">
			Bermuda
		</option>
		<option value="/geos/bt.html" data-place-code="bt">
			Bhutan
		</option>
		<option value="/geos/bl.html" data-place-code="bl">
			Bolivia
		</option>
		<option value="/geos/bk.html" data-place-code="bk">
			Bosnia and Herzegovina
		</option>
		<option value="/geos/bc.html" data-place-code="bc">
			Botswana
		</option>
		<option value="/geos/br.html" data-place-code="br">
			Brazil
		</option>
		<option value="/geos/bx.html" data-place-code="bx">
			Brunei
		</option>
		<option value="/geos/bu.html" data-place-code="bu">
			Bulgaria
		</option>
		<option value="/geos/uv.html" data-place-code="uv">
			Burkina Faso
		</option>
		<option value="/geos/bm.html" data-place-code="bm">
			Burma
		</option>
		<option value="/geos/by.html" data-place-code="by">
			Burundi
		</option>
		<option value="/geos/cv.html" data-place-code="cv">
			Cabo Verde
		</option>
		<option value="/geos/cb.html" data-place-code="cb">
			Cambodia
		</option>
		<option value="/geos/cm.html" data-place-code="cm">
			Cameroon
		</option>
		<option value="/geos/ca.html" data-place-code="ca">
			Canada
		</option>
		<option value="/geos/ct.html" data-place-code="ct">
			Central African Republic
		</option>
		<option value="/geos/cd.html" data-place-code="cd">
			Chad
		</option>
		<option value="/geos/ci.html" data-place-code="ci">
			Chile
		</option>
		<option value="/geos/ch.html" data-place-code="ch">
			China
		</option>
		<option value="/geos/co.html" data-place-code="co">
			Colombia
		</option>
		<option value="/geos/cn.html" data-place-code="cn">
			Comoros
		</option>
		<option value="/geos/cg.html" data-place-code="cg">
			Congo, Democratic Republic of the
		</option>
		<option value="/geos/cf.html" data-place-code="cf">
			Congo, Republic of the
		</option>
		<option value="/geos/cs.html" data-place-code="cs">
			Costa Rica
		</option>
		<option value="/geos/iv.html" data-place-code="iv">
			Cote d'Ivoire
		</option>
		<option value="/geos/hr.html" data-place-code="hr">
			Croatia
		</option>
		<option value="/geos/cu.html" data-place-code="cu">
			Cuba
		</option>
		<option value="/geos/uc.html" data-place-code="uc">
			Curacao
		</option>
		<option value="/geos/cy.html" data-place-code="cy">
			Cyprus
		</option>
		<option value="/geos/ez.html" data-place-code="ez">
			Czechia
		</option>
		<option value="/geos/da.html" data-place-code="da">
			Denmark
		</option>
		<option value="/geos/dx.html" data-place-code="dx">
			Dhekelia
		</option>
		<option value="/geos/dj.html" data-place-code="dj">
			Djibouti
		</option>
		<option value="/geos/do.html" data-place-code="do">
			Dominica
		</option>
		<option value="/geos/dr.html" data-place-code="dr">
			Dominican Republic
		</option>
		<option value="/geos/ec.html" data-place-code="ec">
			Ecuador
		</option>
		<option value="/geos/eg.html" data-place-code="eg">
			Egypt
		</option>
		<option value="/geos/es.html" data-place-code="es">
			El Salvador
		</option>
		<option value="/geos/ek.html" data-place-code="ek">
			Equatorial Guinea
		</option>
		<option value="/geos/er.html" data-place-code="er">
			Eritrea
		</option>
		<option value="/geos/en.html" data-place-code="en">
			Estonia
		</option>
		<option value="/geos/wz.html" data-place-code="wz">
			Eswatini
		</option>
		<option value="/geos/et.html" data-place-code="et">
			Ethiopia
		</option>
		<option value="/geos/fi.html" data-place-code="fi">
			Finland
		</option>
		<option value="/geos/fr.html" data-place-code="fr">
			France
		</option>
		<option value="/geos/gb.html" data-place-code="gb">
			Gabon
		</option>
		<option value="/geos/ga.html" data-place-code="ga">
			Gambia, The
		</option>
		<option value="/geos/gz.html" data-place-code="gz">
			Gaza Strip
		</option>
		<option value="/geos/gg.html" data-place-code="gg">
			Georgia
		</option>
		<option value="/geos/gm.html" data-place-code="gm">
			Germany
		</option>
		<option value="/geos/gh.html" data-place-code="gh">
			Ghana
		</option>
		<option value="/geos/gi.html" data-place-code="gi">
			Gibraltar
		</option>
		<option value="/geos/gr.html" data-place-code="gr">
			Greece
		</option>
		<option value="/geos/gl.html" data-place-code="gl">
			Greenland
		</option>
		<option value="/geos/gj.html" data-place-code="gj">
			Grenada
		</option>
		<option value="/geos/gq.html" data-place-code="gq">
			Guam
		</option>
		<option value="/geos/gt.html" data-place-code="gt">
			Guatemala
		</option>
		<option value="/geos/gk.html" data-place-code="gk">
			Guernsey
		</option>
		<option value="/geos/gv.html" data-place-code="gv">
			Guinea
		</option>
		<option value="/geos/pu.html" data-place-code="pu">
			Guinea-Bissau
		</option>
		<option value="/geos/gy.html" data-place-code="gy">
			Guyana
		</option>
		<option value="/geos/ha.html" data-place-code="ha">
			Haiti
		</option>
		<option value="/geos/vt.html" data-place-code="vt">
			Holy See (Vatican City)
		</option>
		<option value="/geos/ho.html" data-place-code="ho">
			Honduras
		</option>
		<option value="/geos/um.html" data-place-code="um">
			Howland Island
		</option>
		<option value="/geos/hu.html" data-place-code="hu">
			Hungary
		</option>
		<option value="/geos/ic.html" data-place-code="ic">
			Iceland
		</option>
		<option value="/geos/in.html" data-place-code="in">
			India
		</option>
		<option value="/geos/id.html" data-place-code="id">
			Indonesia
		</option>
		<option value="/geos/ir.html" data-place-code="ir">
			Iran
		</option>
		<option value="/geos/iz.html" data-place-code="iz">
			Iraq
		</option>
		<option value="/geos/ei.html" data-place-code="ei">
			Ireland
		</option>
		<option value="/geos/im.html" data-place-code="im">
			Isle of Man
		</option>
		<option value="/geos/is.html" data-place-code="is">
			Israel
		</option>
		<option value="/geos/it.html" data-place-code="it">
			Italy
		</option>
		<option value="/geos/jm.html" data-place-code="jm">
			Jamaica
		</option>
		<option value="/geos/ja.html" data-place-code="ja">
			Japan
		</option>
		<option value="/geos/je.html" data-place-code="je">
			Jersey
		</option>
		<option value="/geos/jo.html" data-place-code="jo">
			Jordan
		</option>
		<option value="/geos/kz.html" data-place-code="kz">
			Kazakhstan
		</option>
		<option value="/geos/ke.html" data-place-code="ke">
			Kenya
		</option>
		<option value="/geos/kr.html" data-place-code="kr">
			Kiribati
		</option>
		<option value="/geos/kn.html" data-place-code="kn">
			Korea, North
		</option>
		<option value="/geos/ks.html" data-place-code="ks">
			Korea, South
		</option>
		<option value="/geos/kv.html" data-place-code="kv">
			Kosovo
		</option>
		<option value="/geos/ku.html" data-place-code="ku">
			Kuwait
		</option>
		<option value="/geos/kg.html" data-place-code="kg">
			Kyrgyzstan
		</option>
		<option value="/geos/la.html" data-place-code="la">
			Laos
		</option>
		<option value="/geos/lg.html" data-place-code="lg">
			Latvia
		</option>
		<option value="/geos/le.html" data-place-code="le">
			Lebanon
		</option>
		<option value="/geos/lt.html" data-place-code="lt">
			Lesotho
		</option>
		<option value="/geos/li.html" data-place-code="li">
			Liberia
		</option>
		<option value="/geos/ly.html" data-place-code="ly">
			Libya
		</option>
		<option value="/geos/ls.html" data-place-code="ls">
			Liechtenstein
		</option>
		<option value="/geos/lh.html" data-place-code="lh">
			Lithuania
		</option>
		<option value="/geos/lu.html" data-place-code="lu">
			Luxembourg
		</option>
		<option value="/geos/ma.html" data-place-code="ma">
			Madagascar
		</option>
		<option value="/geos/mi.html" data-place-code="mi">
			Malawi
		</option>
		<option value="/geos/my.html" data-place-code="my">
			Malaysia
		</option>
		<option value="/geos/mv.html" data-place-code="mv">
			Maldives
		</option>
		<option value="/geos/ml.html" data-place-code="ml">
			Mali
		</option>
		<option value="/geos/mt.html" data-place-code="mt">
			Malta
		</option>
		<option value="/geos/mr.html" data-place-code="mr">
			Mauritania
		</option>
		<option value="/geos/mp.html" data-place-code="mp">
			Mauritius
		</option>
		<option value="/geos/mx.html" data-place-code="mx">
			Mexico
		</option>
		<option value="/geos/um.html" data-place-code="um">
			Midway Islands
		</option>
		<option value="/geos/md.html" data-place-code="md">
			Moldova
		</option>
		<option value="/geos/mn.html" data-place-code="mn">
			Monaco
		</option>
		<option value="/geos/mg.html" data-place-code="mg">
			Mongolia
		</option>
		<option value="/geos/mj.html" data-place-code="mj">
			Montenegro
		</option>
		<option value="/geos/mh.html" data-place-code="mh">
			Montserrat
		</option>
		<option value="/geos/mo.html" data-place-code="mo">
			Morocco
		</option>
		<option value="/geos/mz.html" data-place-code="mz">
			Mozambique
		</option>
		<option value="/geos/wa.html" data-place-code="wa">
			Namibia
		</option>
		<option value="/geos/nr.html" data-place-code="nr">
			Nauru
		</option>
		<option value="/geos/np.html" data-place-code="np">
			Nepal
		</option>
		<option value="/geos/nl.html" data-place-code="nl">
			Netherlands
		</option>
		<option value="/geos/nc.html" data-place-code="nc">
			New Caledonia
		</option>
		<option value="/geos/nz.html" data-place-code="nz">
			New Zealand
		</option>
		<option value="/geos/nu.html" data-place-code="nu">
			Nicaragua
		</option>
		<option value="/geos/ng.html" data-place-code="ng">
			Niger
		</option>
		<option value="/geos/ni.html" data-place-code="ni">
			Nigeria
		</option>
		<option value="/geos/ne.html" data-place-code="ne">
			Niue
		</option>
		<option value="/geos/mk.html" data-place-code="mk">
			North Macedonia
		</option>
		<option value="/geos/no.html" data-place-code="no">
			Norway
		</option>
		<option value="/geos/mu.html" data-place-code="mu">
			Oman
		</option>
		<option value="/geos/pk.html" data-place-code="pk">
			Pakistan
		</option>
		<option value="/geos/ps.html" data-place-code="ps">
			Palau
		</option>
		<option value="/geos/um.html" data-place-code="um">
			Palmyra Atoll
		</option>
		<option value="/geos/pm.html" data-place-code="pm">
			Panama
		</option>
		<option value="/geos/pp.html" data-place-code="pp">
			Papua New Guinea
		</option>
		<option value="/geos/pa.html" data-place-code="pa">
			Paraguay
		</option>
		<option value="/geos/pe.html" data-place-code="pe">
			Peru
		</option>
		<option value="/geos/rp.html" data-place-code="rp">
			Philippines
		</option>
		<option value="/geos/pl.html" data-place-code="pl">
			Poland
		</option>
		<option value="/geos/po.html" data-place-code="po">
			Portugal
		</option>
		<option value="/geos/rq.html" data-place-code="rq">
			Puerto Rico
		</option>
		<option value="/geos/qa.html" data-place-code="qa">
			Qatar
		</option>
		<option value="/geos/ro.html" data-place-code="ro">
			Romania
		</option>
		<option value="/geos/rs.html" data-place-code="rs">
			Russia
		</option>
		<option value="/geos/rw.html" data-place-code="rw">
			Rwanda
		</option>
		<option value="/geos/ws.html" data-place-code="ws">
			Samoa
		</option>
		<option value="/geos/sm.html" data-place-code="sm">
			San Marino
		</option>
		<option value="/geos/tp.html" data-place-code="tp">
			Sao Tome and Principe
		</option>
		<option value="/geos/sa.html" data-place-code="sa">
			Saudi Arabia
		</option>
		<option value="/geos/sg.html" data-place-code="sg">
			Senegal
		</option>
		<option value="/geos/ri.html" data-place-code="ri">
			Serbia
		</option>
		<option value="/geos/se.html" data-place-code="se">
			Seychelles
		</option>
		<option value="/geos/sl.html" data-place-code="sl">
			Sierra Leone
		</option>
		<option value="/geos/sn.html" data-place-code="sn">
			Singapore
		</option>
		<option value="/geos/lo.html" data-place-code="lo">
			Slovakia
		</option>
		<option value="/geos/si.html" data-place-code="si">
			Slovenia
		</option>
		<option value="/geos/so.html" data-place-code="so">
			Somalia
		</option>
		<option value="/geos/sf.html" data-place-code="sf">
			South Africa
		</option>
		<option value="/geos/od.html" data-place-code="od">
			South Sudan
		</option>
		<option value="/geos/sp.html" data-place-code="sp">
			Spain
		</option>
		<option value="/geos/ce.html" data-place-code="ce">
			Sri Lanka
		</option>
		<option value="/geos/su.html" data-place-code="su">
			Sudan
		</option>
		<option value="/geos/ns.html" data-place-code="ns">
			Suriname
		</option>
		<option value="/geos/sv.html" data-place-code="sv">
			Svalbard
		</option>
		<option value="/geos/sw.html" data-place-code="sw">
			Sweden
		</option>
		<option value="/geos/sz.html" data-place-code="sz">
			Switzerland
		</option>
		<option value="/geos/sy.html" data-place-code="sy">
			Syria
		</option>
		<option value="/geos/ti.html" data-place-code="ti">
			Tajikistan
		</option>
		<option value="/geos/tz.html" data-place-code="tz">
			Tanzania
		</option>
		<option value="/geos/th.html" data-place-code="th">
			Thailand
		</option>
		<option value="/geos/to.html" data-place-code="to">
			Togo
		</option>
		<option value="/geos/tl.html" data-place-code="tl">
			Tokelau
		</option>
		<option value="/geos/tn.html" data-place-code="tn">
			Tonga
		</option>
		<option value="/geos/ts.html" data-place-code="ts">
			Tunisia
		</option>
		<option value="/geos/tu.html" data-place-code="tu">
			Turkey
		</option>
		<option value="/geos/tx.html" data-place-code="tx">
			Turkmenistan
		</option>
		<option value="/geos/tv.html" data-place-code="tv">
			Tuvalu
		</option>
		<option value="/geos/ug.html" data-place-code="ug">
			Uganda
		</option>
		<option value="/geos/up.html" data-place-code="up">
			Ukraine
		</option>
		<option value="/geos/ae.html" data-place-code="ae">
			United Arab Emirates
		</option>
		<option value="/geos/uk.html" data-place-code="uk">
			United Kingdom
		</option>
		<option value="/geos/us.html" data-place-code="us">
			United States
		</option>
		<option value="/geos/uy.html" data-place-code="uy">
			Uruguay
		</option>
		<option value="/geos/uz.html" data-place-code="uz">
			Uzbekistan
		</option>
		<option value="/geos/nh.html" data-place-code="nh">
			Vanuatu
		</option>
		<option value="/geos/ve.html" data-place-code="ve">
			Venezuela
		</option>
		<option value="/geos/vm.html" data-place-code="vm">
			Vietnam
		</option>
		<option value="/geos/wi.html" data-place-code="wi">
			Western Sahara
		</option>
		<option value="/geos/ym.html" data-place-code="ym">
			Yemen
		</option>
		<option value="/geos/za.html" data-place-code="za">
			Zambia
		</option>
		<option value="/geos/zi.html" data-place-code="zi">
			Zimbabwe
		</option>
	</select>
	<input type="submit" value="Submit">
</form>
</nav>
</body>
</html>


