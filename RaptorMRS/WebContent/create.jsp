<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>

<!DOCTYPE html>
<html lang="en-US">

<head>
	<link rel="stylesheet" href="main.css" type="text/css" />
	<title>Easy EMR</title>
</head>

<body>
<f:view>
	<div id= "navigation">
		<img src="img\logo_xl.png" height="60" width="180">
	</div>
	

	<div id="container">
	<BR>
	
	
	<font color="red"><h3>You are logged in as a: <i>Student</i></h3></font>
	
	<center>
	<div width = "400" height = "60" style="border:2px groove">
	<p><b>Search:</b>&nbsp;&nbsp;First Name <h:inputText id="firstname" value="" />&nbsp;&nbsp;Last Name<h:inputText id="lastname" value="" />&nbsp;&nbsp;Patient ID<h:inputText id="patientID" value="" />&nbsp;&nbsp;<h:commandButton id="search" value="Search" action="search"></h:commandButton></p>
	</div>
	</center>
	
	<center><font color="red"><h1>Visit ID: 12345</h1></font></center>
		<div id= "create" style="float:left">
			
			<div id = "module" style="float:left">
				<h1>General Information</h1>
				
				<a href=""><img src="img/nopic.png"></a>
				
				<h3>Patient ID</h3>
				<h3>123</h3>
				<h3>First Name</h3>
				<h:inputText></h:inputText>
				<h3>Last Name</h3>
				<h:inputText></h:inputText>
				<h3>City/Town/Village of Residence</h3>
				<h:inputText></h:inputText>
				<h3>Age</h3>
				<h:inputText></h:inputText>
				
				<h3>Gender</h3>
				<h:selectOneMenu id ="gender" value="">
				   	<f:selectItem itemValue="1" itemLabel="- Select -" />
				   	<f:selectItem itemValue="2" itemLabel="Male" />
				   	<f:selectItem itemValue="3" itemLabel="Female" />
				</h:selectOneMenu>
				
				
				<h3>Height</h3>
				<h:inputText id="hin" value="" /> in
				
				<h3>Weight</h3>
				<h:inputText id="wlbs" value="" /> lbs
				<br>
				
				<h3>BMI</h3>
				
				<h:selectOneMenu id = "bmi" value="">
				   	<f:selectItem itemValue="1" itemLabel="-" />
				   	<f:selectItem itemValue="2" itemLabel="25" />
				   	<f:selectItem itemValue="3" itemLabel="26" />
					<f:selectItem itemValue="4" itemLabel="27" />
					<f:selectItem itemValue="5" itemLabel="28" />
					<f:selectItem itemValue="6" itemLabel="29" />
					<f:selectItem itemValue="7" itemLabel="30" />
					<f:selectItem itemValue="8" itemLabel="31" />
					<f:selectItem itemValue="9" itemLabel="32" />
					<f:selectItem itemValue="10" itemLabel="33" />
					<f:selectItem itemValue="11" itemLabel="34" />
					<f:selectItem itemValue="12" itemLabel="35" />
					<f:selectItem itemValue="13" itemLabel="36" />
					<f:selectItem itemValue="14" itemLabel="37" />
					<f:selectItem itemValue="15" itemLabel="38" />
					<f:selectItem itemValue="16" itemLabel="39" />
					<f:selectItem itemValue="17" itemLabel="40" />
					<f:selectItem itemValue="18" itemLabel="41" />
					<f:selectItem itemValue="19" itemLabel="42" />
					<f:selectItem itemValue="20" itemLabel="43" />
					<f:selectItem itemValue="21" itemLabel="44" />
					<f:selectItem itemValue="22" itemLabel=">=45" />
					
				</h:selectOneMenu>
			</div>
			
			<div id = "module" style="float:right">
				<h1>Vitals</h1>
				<h3>Blood Pressure (mmHg)</h3>
				<h:inputText id="bpTop"  value="" /> / <h:inputText id="bpBottom"  value="" /> <BR>
				
				<h3>Heart Rate (bpm)</h3>
				<h:inputText id="heartrate"  value="" /><br>
				
				<h3>Temperature (C)</h3>
				<h:inputText id="temperature"  value="" /><br>
				
				<h3>Respirations (Breaths per Minute)</h3>
				<h:inputText id="respirations"  value="" /><br>

				<h3>Oxygen (%)</h3>
				<h:inputText id="oxygen"  value="" /><br>
			</div>
		</div>
		
		<!-- Not yet converted to JSF from here down -->
		
		<div id= "create" style="float:right">
		
			<div id = "module" style="float:left">
				<h1>Complaints and Treatment</h1>
				<h3>Primary Complaint</h3>
				<h:inputTextarea id="primaryComplaint" value="" />
				<h3>Treatment Given</h3>
				<h:inputTextarea id="treatmentGiven" value="" />
						<h3>Prescription</h3>
				<select>
					<option value = "1">- Select -</option>
					<option value = "2">** OTC **</option>
					<option value = "3">Guaifenesin/Dextromethorphan</option>
					<option value = "4">Delsym(Dextromethorphan)</option>
					<option value = "5">Naproxen</option>
					<option value = "6">Aleve samples</option>
					<option value = "7">Ibuprofen</option>
					<option value = "8">Children's APAP</option>
					<option value = "9">Metamucil</option>
					<option value = "10">Cetirizine Tabs</option>
					<option value = "11">Preperation H</option>
					<option value = "12">Naproxen sodium</option>
					<option value = "13">Motrin (ibuprofen)</option>
					<option value = "14">Stainback Headache powder</option>
					<option value = "15">Enablex Darifenacin</option>
					<option value = "16">Glumetza (metformin hydrochloride)</option>
					<option value = "17">Vimovo (naproxen + esomeprazole magnesium)</option>
					<option value = "18">Simcor (niacin ext-release + simvastatin)</option>
					<option value = "19">Analpram advance kit</option>
					<option value = "20">** Eye Drops **</option>
					<option value = "21">astepro (azelastine)</option>
					<option value = "22">alendoronate sodium</option>
					<option value = "23">alendronate sodium</option>
					<option value = "24">detrol (toterodine tartiate)</option>
					<option value = "25">armour thyroid</option>
					<option value = "26">Tylenol ext str (acetaminophen)</option>
					<option value = "27">aspirin (NSAID)</option>
					<option value = "28">Stye-eye relief (Conium maculatum)</option>
					<option value = "29">Activated charcoal</option>
					<option value = "30">Calagesic lotion</option>
					<option value = "31">Arthritis pain relief lotion</option>
					<option value = "32">Nasal decongestant spray (oxymetazoline)</option>
					<option value = "33">nystatin</option>
					<option value = "34">evista raloxifene hcl</option>
					<option value = "35">strattera atomoxetine hcl</option>
					<option value = "36">Excedrin</option>
					<option value = "37">Advil</option>
					<option value = "38">Tylenol XS</option>
					<option value = "39">Triaminic</option>
					<option value = "40">** Psych **</option>
					<option value = "41">geodon ziprasidone hcl</option>
					<option value = "42">** Antibiotics **</option>
					<option value = "43">Amoxicillin</option>
					<option value = "44">Augmentin (amox/clav)</option>
					<option value = "45">Cephaclor</option>
					<option value = "46">Clarithromycin</option>
					<option value = "47">Ceftriaxone</option>
					<option value = "48">Amox/clav</option>
					<option value = "49">Sulfamethoxazole/trimethoprim</option>
					<option value = "50">Doxycycline</option>
					<option value = "51">Sulfamethoxazole/trimethoprim</option>
					<option value = "52">Ciprofloxacin</option>
					<option value = "53">Cephalexin</option>
					<option value = "54">Cephalexin</option>
					<option value = "55">Clarithromycin</option>
					<option value = "56">Amoxicillin</option>
					<option value = "57">Peri Guard - Zinc Oxide</option>
					<option value = "58">Hexachlorphene</option>
					<option value = "59">First aid antiboitic cream</option>
					<option value = "60">ADOX A, doxycycline</option>
					<option value = "61">Amoxicillin</option>
					<option value = "62">Metronidazole</option>
					<option value = "63">neoral cyclosporin</option>
					<option value = "64">Nitrofurantoin</option>
					<option value = "65">** Gastrointestinal **</option>
					<option value = "66">Docusate Sodium</option>
					<option value = "67">Docusate Sodium</option>
					<option value = "68">Omeprazole</option>
					<option value = "69">Ranitidine</option>
					<option value = "70">Antacid tablets</option>
					<option value = "71">pepto-bismol</option>
					<option value = "72">antacid/ calcium supplement</option>
					<option value = "73">stool softener</option>
					<option value = "74">lubiprostone</option>
					<option value = "75">Fiber choice</option>
					<option value = "76">Florastor</option>
					<option value = "78">Glutasolve</option>
					<option value = "79">Senna-Lax (sennosides)</option>
					<option value = "80">Benefiber (Wheat Dextrin)</option>
					<option value = "81">Dulcolax(Bisacodyl)</option>
					<option value = "82">** Anti Seizure **</option>
					<option value = "83">Dilantin/phenytoin</option>
					<option value = "84">Dilantin/phenytoin</option>
					<option value = "85">Neurontin (gabapentin)</option>
					<option value = "86">levetiracetam</option>
					<option value = "87">tegretol (carbamazepine ext release)</option>
					<option value = "88">trileptal (oxcerbazepine)</option>
					<option value = "89">keppra xr levetiracetam</option>
					<option value = "90">** Beta Blockers **</option>
					<option value = "91">Accuretic (quinapril/hydrachlorothiazide)</option>
					<option value = "92">Propanolol ER</option>
					<option value = "93">Lisinopril/hydrochlorothiazide</option>
					<option value = "94">Tiazac (diltiazem)</option>
					<option value = "95">inosorbide mononitrate</option>
					<option value = "96">Exforge(Amlodipine and Valsartan)</option>
					<option value = "97">Lescol(Fluvastatin)</option>
					<option value = "98">Juvisync (simvastatin and sitagliptin)</option>
					<option value = "99">cholestyramine for oral suspension</option>
					<option value = "100">Effient(Prasugrel)</option>
					<option value = "101">Caduet(Amlodipine and Atorvastatin)</option>
					<option value = "102">Azor(Amlodipine and Olmesartan)</option>
					<option value = "103">Xarelto(Rivaroxaban)</option>
					<option value = "104">Aliskiren</option>
					<option value = "105">Benicar HCT(Olmesartan and Hydrochlorothiazide)</option>
					<option value = "106">Aldactone(Spironolactone)</option>
					<option value = "107">Niaspan (niacin extended release)</option>
					<option value = "108">epinephrine 1:10,000</option>
					<option value = "109">exforge ( amlodipine + valsartan)</option>
					<option value = "110">zetia</option>
					<option value = "111">avapro (irbesartan)</option>
					<option value = "112">avalide (irbesartan - hydrochloro thiazide)</option>
					<option value = "113">welchol colesevelam hcl</option>
					<option value = "114">azor amloplipine + olmesartan medoxomil</option>
					<option value = "115">** Vitamins **</option>
					<option value = "116">Calcium + Vit. D</option>
					<option value = "117">Kids vitamin gummies</option>
					<option value = "118">Centrum Women's MVI</option>
					<option value = "119">Women's MVI</option>
					<option value = "120">Bedoyecta MVI</option>
					<option value = "121">Multivitamin</option>
					<option value = "122">PreferaOB One prenatal vitamins</option>
					<option value = "123">Prenatal vitamins</option>
					<option value = "124">Prenatal vitamins + DHA - Neevo DHA</option>
					<option value = "125">Prenatal vitamin</option>
					<option value = "126">Vit. C</option>
					<option value = "127">kids multi</option>
					<option value = "128">kids multi</option>
					<option value = "129">Prenatals</option>
					<option value = "130">Raw Prenatal vitamins</option>
					<option value = "131">Multivitamin</option>
					<option value = "132">Folate - Neevo Mother Nature's</option>
					<option value = "133">folic acid</option>
					<option value = "134">Folic Acid</option>
					<option value = "135">Folic Acid (folic, B6, B12)</option>
					<option value = "136">Calcium 500 + D3</option>
					<option value = "137">Calcium 600 + D3</option>
					<option value = "138">Calcium + Vit. D</option>
					<option value = "139">Calcium + Vit. D</option>
					<option value = "140">Citracal (indiv packs?)</option>
					<option value = "141">Citracal plus Heart Health</option>
					<option value = "142">Citracal Max (indiv packs?)</option>
					<option value = "143">Citracal Max</option>
					<option value = "144">Citracal</option>
					<option value = "145">Cal.Citrate + Vit D</option>
					<option value = "146">Cal.Citrate + Vit D</option>
					<option value = "147">Coral Calcium</option>
					<option value = "148">Cal-EZ</option>
					<option value = "149">Calcium 600 with Vit D</option>
					<option value = "150">Vit D</option>
					<option value = "151">Vit D (D-3)</option>
					<option value = "152">Vit. B1</option>
					<option value = "153">Ferrous Sulfate</option>
					<option value = "154">Women's Vitamins</option>
					<option value = "155">Women's Vitamins</option>
					<option value = "156">Women's Vitamins</option>
					<option value = "157">Golitath Multivitamin</option>
					<option value = "158">Prenatal Vitamins</option>
					<option value = "159">Every Man II Men's vitamin</option>
					<option value = "160">"Max...Fe, Vit C, Vit B"</option>
					<option value = "161">Ferrolet 90 (90 mg Fe)</option>
					<option value = "162">Daily Packs</option>
					<option value = "163">Life Extension mix tablets</option>
					<option value = "164">Centrum MVI</option>
					<option value = "165">Slow-Mag with Calcium</option>
					<option value = "166">Slow-Mag (Magnesium chloride)</option>
					<option value = "167">Chromax Plus</option>
					<option value = "168">Geritol (A,C,E)</option>
					<option value = "169">Black Cohosh Root (pre-menopausal)</option>
					<option value = "170">"Chooz" Antacid/calcium support (indiv packs?)</option>
					<option value = "171">Glucosamine, Chondroitan, MSM</option>
					<option value = "172">Glucosamine, Chondroitan, MSM</option>
					<option value = "173">Men's Multivitamin (men<40)</option>
					<option value = "174">Vitamin E</option>
					<option value = "175">Vitamin B12</option>
					<option value = "176">Vitamin D3</option>
					<option value = "177">Green Tea Slim</option>
					<option value = "178">Sentry Cardio Support</option>
					<option value = "179">Fish Oil Omega-3</option>
					<option value = "180">Grape Glucose (Dex 4)</option>
					<option value = "181">Raspberry Glucose (Dex 4)</option>
					<option value = "182">Watermelon Glucose (Dex 4)</option>
					<option value = "183">Tab-a-Vite (multivitamin w/ B-carotene)</option>
					<option value = "184">SSS Tonic HP Iron B</option>
					<option value = "185">Vita-K Solution (vitamin K)</option>
					<option value = "186">Vita-K Dark Circles (vitamin K)</option>
					<option value = "187">Magnesium Sulfate</option>
					<option value = "188">Vitamin A (HP B-carotene)</option>
					<option value = "189">Vitamin C (HP)</option>
					<option value = "190">Calcium Citrate + Vitamin D</option>
					<option value = "191">PolyVitamin Drops (Children's multivitamin)</option>
					<option value = "192">Vitamin E</option>
					<option value = "193">Vitamin E</option>
					<option value = "194">Citracal</option>
					<option value = "195">Citracal</option>
					<option value = "196">Slow Mag</option>
					<option value = "197">ChromaxPlus</option>
					<option value = "198">Vitamin C and Honey lozenges</option>
					<option value = "199">** Inhalers **</option>
					<option value = "200">Qvar (beclomethasone)</option>
					<option value = "201">Albuterol Sulfate</option>
					<option value = "202">Proair (albuterol sulfate)</option>
					<option value = "203">Flovent diskus</option>
					<option value = "204">Flovent diskus</option>
					<option value = "205">nasal drops</option>
					<option value = "206">symbicort</option>
					<option value = "207">asmanex twisthaler/ mometason furoate</option>
					<option value = "208">ipratropium bromide + albuterol sulfate</option>
					<option value = "209">albuterol sulfate</option>
					<option value = "210">ipratropium bromide</option>
					<option value = "211">ipratropium brromide</option>
					<option value = "212">ipratropium bromide</option>
					<option value = "213">albuterol sulfate</option>
					<option value = "214">Advair HFA (Fluticasone propionate)</option>
					<option value = "215">nebulizer</option>
					<option value = "216">** Allergy Medication **</option>
					<option value = "217">Azelastine</option>
					<option value = "218">Promethazine</option>
					<option value = "219">Clarinex</option>
					<option value = "220">Epi injection 1:1000</option>
					<option value = "221">Diphenhydramine HCl</option>
					<option value = "222">Singulair</option>
					<option value = "223">Singulair</option>
					<option value = "224">Allegra</option>
					<option value = "225">Foradil Aerolizer</option>
					<option value = "226">Drug free allegen block</option>
					<option value = "227">antihistamine</option>
					<option value = "228">antihistamine</option>
					<option value = "229">eye drops</option>
					<option value = "230">hydrocortisone 1%</option>
					<option value = "231">** Anti Fungal **</option>
					<option value = "232">Miconazole 7</option>
					<option value = "233">Miconazole 3</option>
					<option value = "234">Lotrisone (clotrimazole/betamethasone)</option>
					<option value = "235">Nystatin oral</option>
					<option value = "236">Clotrimazole - 1%</option>
					<option value = "237">** Diabetes **</option>
					<option value = "238">Accucheck meters</option>
					<option value = "239">Accu-check DM monitor kit</option>
					<option value = "240">Glucometers + test strips</option>
					<option value = "241">lancets</option>
					<option value = "242">Finger stick devices</option>
					<option value = "243">glucometer, test strip, lancet combo</option>
					<option value = "244">Januvia, sitagliptin phsophate</option>
					<option value = "245">Janumet sitaguptin/metformin</option>
					<option value = "246">Actoplus met, piolitazine HCL and metformin</option>
					<option value = "247">Actos, pioglitazone hcl</option>
					<option value = "248">Kambiguyze, saxagliptin and metformin</option>
					<option value = "249">Metformin</option>
					<option value = "250">lancets</option>
					<option value = "251">glucose tablet</option>
					<option value = "252">Dex 4 Glucose tablets</option>
					<option value = "253">Dex 4 Glucose tablets</option>
					<option value = "254">Single use sterile lancets</option>
					<option value = "255">Diabetes support formula (ALA)</option>
					<option value = "256">novolog flex pen insulin</option>
					<option value = "257">Janumet (sitagliptin metformin HCL)</option>
					<option value = "258">Novolog FlexPen (insulin aspart injection)</option>
					<option value = "259">lancets</option>
					<option value = "260">glucose test strips</option>
					<option value = "261">blood glucose monitoring system</option>
					<option value = "262">monitoring systems</option>
					<option value = "263">Glucometer (Accu-Chek Aviva)</option>
					<option value = "264">Glucometer (Prodigy Autocode)</option>
					<option value = "265">Glyburide(Glibenclamide)</option>
					<option value = "266">lancets</option>
					<option value = "267">Welchol(Colesevelam)</option>
					<option value = "268">** Hygiene **</option>
					<option value = "269">Condoms</option>
					<option value = "270">Aquanil Cleanser</option>
					<option value = "271">Salicyclic Acid shampoo</option>
					<option value = "272">Zinc Shampoo</option>
					<option value = "273">Moisturizing lotion</option>
					<option value = "274">Non Chemical sunscreen SPF 58</option>
					<option value = "275">Lotion with Dimeticone 1.3%</option>
					<option value = "276">Antimicrobial healthy foot lotion</option>
					<option value = "277">Eucerin Calming Itch relief 5 fl oz</option>
					<option value = "278">** MISC **</option>
					<option value = "279">GLucerna 1.2 cal</option>
					<option value = "280">Jevity 1.5 cal</option>
					<option value = "281">Elocon cream</option>
					<option value = "282">Prochlorperazine</option>
					<option value = "283">Wellbutrin SR(Buproprion)</option>
					<option value = "284">Fentanyl patch</option>
					<option value = "285">Benzonatate</option>
					<option value = "286">Lorazepam</option>
					<option value = "287">Acyclovir</option>
					<option value = "288">hydrocodone/APAP</option>
					<option value = "289">Valacyclovir</option>
					<option value = "290">Prednisone</option>
					<option value = "291">Olopatadine 0.1%</option>
					<option value = "292">fluticasone propionate cream 0.05%</option>
					<option value = "293">Indomethacin 50mg</option>
					<option value = "294">Peri Guard - Zinc Oxide 3.8%</option>
					<option value = "295">Hexachlorphene 3%</option>
					<option value = "296">Clobestasol Propionate 0.05%</option>
					<option value = "297">Boiron Amicare Cream (muscle therapy)</option>
					<option value = "298">Termin 8 Athlete's Foot Lotion</option>
					<option value = "299">Menthol cooling gel</option>
					<option value = "300">Eczema therapy lotion</option>
					<option value = "301">poison ivy/oak lotion</option>
					<option value = "302">Anti itch gel, benzyl alcohol</option>
					<option value = "303">Earwax removal system</option>
					<option value = "304">Aveeno Baby Soothing Bath treatment</option>
					<option value = "305">Enfamil Newborn Formula</option>
					<option value = "306">Enfamil Gentlease</option>
					<option value = "307">Immodium</option>
					<option value = "308">Alrex </option>
					<option value = "309">Lotemax </option>
					<option value = "310">lubricant jelly - bacteriostatic</option>
					<option value = "311">LUMIGAN® 0.01%</option>
					<option value = "312">Travatan 0.004%</option>
					<option value = "313">"Adult Diaphoretic</option>
					<option value = "314">rozerem</option>
					<option value = "315">levitra</option>
					<option value = "316">valturna</option>
					<option value = "317">Egg White Protein packs</option>
					<option value = "318">atacand hct</option>
					<option value = "319">enoxaparin sodium</option>
					<option value = "320">zyprexa olanzapine</option>
					<option value = "321">sumatriptan succinate</option>
					<option value = "322">actos pioglitazonoe hcl</option>
					<option value = "323">docusate na</option>
					<option value = "324">seroquel</option>
					<option value = "325">galantamine hydrobromide</option>
					<option value = "326">simcor</option>
					<option value = "327">synthroid</option>
					<option value = "328">opthalmic ointment</option>
					<option value = "329">bowel prep kit</option>
					<option value = "330">lexapro</option>
					<option value = "331">Campral (acamprosate calcium)</option>
					<option value = "332">Pristiq (desvenlafaxine)</option>
					<option value = "333">Silver Sulfadiazine cream</option>
					<option value = "334">lidocane</option>
					<option value = "335">needles</option>
					<option value = "336">triple beam baby scale</option>
					<option value = "337">nutren drinks</option>
					<option value = "338">respirator</option>
					<option value = "339">iv cemstor sets</option>
					<option value = "340">Pramosone</option>
					<option value = "341">Daliresp(Roflumilast)</option>
					<option value = "342">Zoloft(Sertraline)</option>
					<option value = "343">Effexor XL(Venlafaxine)</option>
					<option value = "344">Boniva(Ibandronic acid)</option>
					<option value = "345">Olux-E (clobetasolpropionate foam:0.05%)</option>
					<option value = "346">Finacea (azelaic acid gel:15%)</option>
					<option value = "347">Luxiq (betamethasone valerate foam:0.12%)</option>
					<option value = "348">Epiduo (adapalene:0.1%, benzoylperoxide:2.5%)</option>
					<option value = "349">Jalyn(Dutasteride and Tamsulosin)</option>
					<option value = "350">ALOQUIN® gel</option>
					<option value = "351">Vaginal suppository inserter</option>
				</select>
								<select>
					<option value = "1">- Select -</option>
					<option value = "2">** OTC **</option>
					<option value = "3">Guaifenesin/Dextromethorphan</option>
					<option value = "4">Delsym(Dextromethorphan)</option>
					<option value = "5">Naproxen</option>
					<option value = "6">Aleve samples</option>
					<option value = "7">Ibuprofen</option>
					<option value = "8">Children's APAP</option>
					<option value = "9">Metamucil</option>
					<option value = "10">Cetirizine Tabs</option>
					<option value = "11">Preperation H</option>
					<option value = "12">Naproxen sodium</option>
					<option value = "13">Motrin (ibuprofen)</option>
					<option value = "14">Stainback Headache powder</option>
					<option value = "15">Enablex Darifenacin</option>
					<option value = "16">Glumetza (metformin hydrochloride)</option>
					<option value = "17">Vimovo (naproxen + esomeprazole magnesium)</option>
					<option value = "18">Simcor (niacin ext-release + simvastatin)</option>
					<option value = "19">Analpram advance kit</option>
					<option value = "20">** Eye Drops **</option>
					<option value = "21">astepro (azelastine)</option>
					<option value = "22">alendoronate sodium</option>
					<option value = "23">alendronate sodium</option>
					<option value = "24">detrol (toterodine tartiate)</option>
					<option value = "25">armour thyroid</option>
					<option value = "26">Tylenol ext str (acetaminophen)</option>
					<option value = "27">aspirin (NSAID)</option>
					<option value = "28">Stye-eye relief (Conium maculatum)</option>
					<option value = "29">Activated charcoal</option>
					<option value = "30">Calagesic lotion</option>
					<option value = "31">Arthritis pain relief lotion</option>
					<option value = "32">Nasal decongestant spray (oxymetazoline)</option>
					<option value = "33">nystatin</option>
					<option value = "34">evista raloxifene hcl</option>
					<option value = "35">strattera atomoxetine hcl</option>
					<option value = "36">Excedrin</option>
					<option value = "37">Advil</option>
					<option value = "38">Tylenol XS</option>
					<option value = "39">Triaminic</option>
					<option value = "40">** Psych **</option>
					<option value = "41">geodon ziprasidone hcl</option>
					<option value = "42">** Antibiotics **</option>
					<option value = "43">Amoxicillin</option>
					<option value = "44">Augmentin (amox/clav)</option>
					<option value = "45">Cephaclor</option>
					<option value = "46">Clarithromycin</option>
					<option value = "47">Ceftriaxone</option>
					<option value = "48">Amox/clav</option>
					<option value = "49">Sulfamethoxazole/trimethoprim</option>
					<option value = "50">Doxycycline</option>
					<option value = "51">Sulfamethoxazole/trimethoprim</option>
					<option value = "52">Ciprofloxacin</option>
					<option value = "53">Cephalexin</option>
					<option value = "54">Cephalexin</option>
					<option value = "55">Clarithromycin</option>
					<option value = "56">Amoxicillin</option>
					<option value = "57">Peri Guard - Zinc Oxide</option>
					<option value = "58">Hexachlorphene</option>
					<option value = "59">First aid antiboitic cream</option>
					<option value = "60">ADOX A, doxycycline</option>
					<option value = "61">Amoxicillin</option>
					<option value = "62">Metronidazole</option>
					<option value = "63">neoral cyclosporin</option>
					<option value = "64">Nitrofurantoin</option>
					<option value = "65">** Gastrointestinal **</option>
					<option value = "66">Docusate Sodium</option>
					<option value = "67">Docusate Sodium</option>
					<option value = "68">Omeprazole</option>
					<option value = "69">Ranitidine</option>
					<option value = "70">Antacid tablets</option>
					<option value = "71">pepto-bismol</option>
					<option value = "72">antacid/ calcium supplement</option>
					<option value = "73">stool softener</option>
					<option value = "74">lubiprostone</option>
					<option value = "75">Fiber choice</option>
					<option value = "76">Florastor</option>
					<option value = "78">Glutasolve</option>
					<option value = "79">Senna-Lax (sennosides)</option>
					<option value = "80">Benefiber (Wheat Dextrin)</option>
					<option value = "81">Dulcolax(Bisacodyl)</option>
					<option value = "82">** Anti Seizure **</option>
					<option value = "83">Dilantin/phenytoin</option>
					<option value = "84">Dilantin/phenytoin</option>
					<option value = "85">Neurontin (gabapentin)</option>
					<option value = "86">levetiracetam</option>
					<option value = "87">tegretol (carbamazepine ext release)</option>
					<option value = "88">trileptal (oxcerbazepine)</option>
					<option value = "89">keppra xr levetiracetam</option>
					<option value = "90">** Beta Blockers **</option>
					<option value = "91">Accuretic (quinapril/hydrachlorothiazide)</option>
					<option value = "92">Propanolol ER</option>
					<option value = "93">Lisinopril/hydrochlorothiazide</option>
					<option value = "94">Tiazac (diltiazem)</option>
					<option value = "95">inosorbide mononitrate</option>
					<option value = "96">Exforge(Amlodipine and Valsartan)</option>
					<option value = "97">Lescol(Fluvastatin)</option>
					<option value = "98">Juvisync (simvastatin and sitagliptin)</option>
					<option value = "99">cholestyramine for oral suspension</option>
					<option value = "100">Effient(Prasugrel)</option>
					<option value = "101">Caduet(Amlodipine and Atorvastatin)</option>
					<option value = "102">Azor(Amlodipine and Olmesartan)</option>
					<option value = "103">Xarelto(Rivaroxaban)</option>
					<option value = "104">Aliskiren</option>
					<option value = "105">Benicar HCT(Olmesartan and Hydrochlorothiazide)</option>
					<option value = "106">Aldactone(Spironolactone)</option>
					<option value = "107">Niaspan (niacin extended release)</option>
					<option value = "108">epinephrine 1:10,000</option>
					<option value = "109">exforge ( amlodipine + valsartan)</option>
					<option value = "110">zetia</option>
					<option value = "111">avapro (irbesartan)</option>
					<option value = "112">avalide (irbesartan - hydrochloro thiazide)</option>
					<option value = "113">welchol colesevelam hcl</option>
					<option value = "114">azor amloplipine + olmesartan medoxomil</option>
					<option value = "115">** Vitamins **</option>
					<option value = "116">Calcium + Vit. D</option>
					<option value = "117">Kids vitamin gummies</option>
					<option value = "118">Centrum Women's MVI</option>
					<option value = "119">Women's MVI</option>
					<option value = "120">Bedoyecta MVI</option>
					<option value = "121">Multivitamin</option>
					<option value = "122">PreferaOB One prenatal vitamins</option>
					<option value = "123">Prenatal vitamins</option>
					<option value = "124">Prenatal vitamins + DHA - Neevo DHA</option>
					<option value = "125">Prenatal vitamin</option>
					<option value = "126">Vit. C</option>
					<option value = "127">kids multi</option>
					<option value = "128">kids multi</option>
					<option value = "129">Prenatals</option>
					<option value = "130">Raw Prenatal vitamins</option>
					<option value = "131">Multivitamin</option>
					<option value = "132">Folate - Neevo Mother Nature's</option>
					<option value = "133">folic acid</option>
					<option value = "134">Folic Acid</option>
					<option value = "135">Folic Acid (folic, B6, B12)</option>
					<option value = "136">Calcium 500 + D3</option>
					<option value = "137">Calcium 600 + D3</option>
					<option value = "138">Calcium + Vit. D</option>
					<option value = "139">Calcium + Vit. D</option>
					<option value = "140">Citracal (indiv packs?)</option>
					<option value = "141">Citracal plus Heart Health</option>
					<option value = "142">Citracal Max (indiv packs?)</option>
					<option value = "143">Citracal Max</option>
					<option value = "144">Citracal</option>
					<option value = "145">Cal.Citrate + Vit D</option>
					<option value = "146">Cal.Citrate + Vit D</option>
					<option value = "147">Coral Calcium</option>
					<option value = "148">Cal-EZ</option>
					<option value = "149">Calcium 600 with Vit D</option>
					<option value = "150">Vit D</option>
					<option value = "151">Vit D (D-3)</option>
					<option value = "152">Vit. B1</option>
					<option value = "153">Ferrous Sulfate</option>
					<option value = "154">Women's Vitamins</option>
					<option value = "155">Women's Vitamins</option>
					<option value = "156">Women's Vitamins</option>
					<option value = "157">Golitath Multivitamin</option>
					<option value = "158">Prenatal Vitamins</option>
					<option value = "159">Every Man II Men's vitamin</option>
					<option value = "160">"Max...Fe, Vit C, Vit B"</option>
					<option value = "161">Ferrolet 90 (90 mg Fe)</option>
					<option value = "162">Daily Packs</option>
					<option value = "163">Life Extension mix tablets</option>
					<option value = "164">Centrum MVI</option>
					<option value = "165">Slow-Mag with Calcium</option>
					<option value = "166">Slow-Mag (Magnesium chloride)</option>
					<option value = "167">Chromax Plus</option>
					<option value = "168">Geritol (A,C,E)</option>
					<option value = "169">Black Cohosh Root (pre-menopausal)</option>
					<option value = "170">"Chooz" Antacid/calcium support (indiv packs?)</option>
					<option value = "171">Glucosamine, Chondroitan, MSM</option>
					<option value = "172">Glucosamine, Chondroitan, MSM</option>
					<option value = "173">Men's Multivitamin (men<40)</option>
					<option value = "174">Vitamin E</option>
					<option value = "175">Vitamin B12</option>
					<option value = "176">Vitamin D3</option>
					<option value = "177">Green Tea Slim</option>
					<option value = "178">Sentry Cardio Support</option>
					<option value = "179">Fish Oil Omega-3</option>
					<option value = "180">Grape Glucose (Dex 4)</option>
					<option value = "181">Raspberry Glucose (Dex 4)</option>
					<option value = "182">Watermelon Glucose (Dex 4)</option>
					<option value = "183">Tab-a-Vite (multivitamin w/ B-carotene)</option>
					<option value = "184">SSS Tonic HP Iron B</option>
					<option value = "185">Vita-K Solution (vitamin K)</option>
					<option value = "186">Vita-K Dark Circles (vitamin K)</option>
					<option value = "187">Magnesium Sulfate</option>
					<option value = "188">Vitamin A (HP B-carotene)</option>
					<option value = "189">Vitamin C (HP)</option>
					<option value = "190">Calcium Citrate + Vitamin D</option>
					<option value = "191">PolyVitamin Drops (Children's multivitamin)</option>
					<option value = "192">Vitamin E</option>
					<option value = "193">Vitamin E</option>
					<option value = "194">Citracal</option>
					<option value = "195">Citracal</option>
					<option value = "196">Slow Mag</option>
					<option value = "197">ChromaxPlus</option>
					<option value = "198">Vitamin C and Honey lozenges</option>
					<option value = "199">** Inhalers **</option>
					<option value = "200">Qvar (beclomethasone)</option>
					<option value = "201">Albuterol Sulfate</option>
					<option value = "202">Proair (albuterol sulfate)</option>
					<option value = "203">Flovent diskus</option>
					<option value = "204">Flovent diskus</option>
					<option value = "205">nasal drops</option>
					<option value = "206">symbicort</option>
					<option value = "207">asmanex twisthaler/ mometason furoate</option>
					<option value = "208">ipratropium bromide + albuterol sulfate</option>
					<option value = "209">albuterol sulfate</option>
					<option value = "210">ipratropium bromide</option>
					<option value = "211">ipratropium brromide</option>
					<option value = "212">ipratropium bromide</option>
					<option value = "213">albuterol sulfate</option>
					<option value = "214">Advair HFA (Fluticasone propionate)</option>
					<option value = "215">nebulizer</option>
					<option value = "216">** Allergy Medication **</option>
					<option value = "217">Azelastine</option>
					<option value = "218">Promethazine</option>
					<option value = "219">Clarinex</option>
					<option value = "220">Epi injection 1:1000</option>
					<option value = "221">Diphenhydramine HCl</option>
					<option value = "222">Singulair</option>
					<option value = "223">Singulair</option>
					<option value = "224">Allegra</option>
					<option value = "225">Foradil Aerolizer</option>
					<option value = "226">Drug free allegen block</option>
					<option value = "227">antihistamine</option>
					<option value = "228">antihistamine</option>
					<option value = "229">eye drops</option>
					<option value = "230">hydrocortisone 1%</option>
					<option value = "231">** Anti Fungal **</option>
					<option value = "232">Miconazole 7</option>
					<option value = "233">Miconazole 3</option>
					<option value = "234">Lotrisone (clotrimazole/betamethasone)</option>
					<option value = "235">Nystatin oral</option>
					<option value = "236">Clotrimazole - 1%</option>
					<option value = "237">** Diabetes **</option>
					<option value = "238">Accucheck meters</option>
					<option value = "239">Accu-check DM monitor kit</option>
					<option value = "240">Glucometers + test strips</option>
					<option value = "241">lancets</option>
					<option value = "242">Finger stick devices</option>
					<option value = "243">glucometer, test strip, lancet combo</option>
					<option value = "244">Januvia, sitagliptin phsophate</option>
					<option value = "245">Janumet sitaguptin/metformin</option>
					<option value = "246">Actoplus met, piolitazine HCL and metformin</option>
					<option value = "247">Actos, pioglitazone hcl</option>
					<option value = "248">Kambiguyze, saxagliptin and metformin</option>
					<option value = "249">Metformin</option>
					<option value = "250">lancets</option>
					<option value = "251">glucose tablet</option>
					<option value = "252">Dex 4 Glucose tablets</option>
					<option value = "253">Dex 4 Glucose tablets</option>
					<option value = "254">Single use sterile lancets</option>
					<option value = "255">Diabetes support formula (ALA)</option>
					<option value = "256">novolog flex pen insulin</option>
					<option value = "257">Janumet (sitagliptin metformin HCL)</option>
					<option value = "258">Novolog FlexPen (insulin aspart injection)</option>
					<option value = "259">lancets</option>
					<option value = "260">glucose test strips</option>
					<option value = "261">blood glucose monitoring system</option>
					<option value = "262">monitoring systems</option>
					<option value = "263">Glucometer (Accu-Chek Aviva)</option>
					<option value = "264">Glucometer (Prodigy Autocode)</option>
					<option value = "265">Glyburide(Glibenclamide)</option>
					<option value = "266">lancets</option>
					<option value = "267">Welchol(Colesevelam)</option>
					<option value = "268">** Hygiene **</option>
					<option value = "269">Condoms</option>
					<option value = "270">Aquanil Cleanser</option>
					<option value = "271">Salicyclic Acid shampoo</option>
					<option value = "272">Zinc Shampoo</option>
					<option value = "273">Moisturizing lotion</option>
					<option value = "274">Non Chemical sunscreen SPF 58</option>
					<option value = "275">Lotion with Dimeticone 1.3%</option>
					<option value = "276">Antimicrobial healthy foot lotion</option>
					<option value = "277">Eucerin Calming Itch relief 5 fl oz</option>
					<option value = "278">** MISC **</option>
					<option value = "279">GLucerna 1.2 cal</option>
					<option value = "280">Jevity 1.5 cal</option>
					<option value = "281">Elocon cream</option>
					<option value = "282">Prochlorperazine</option>
					<option value = "283">Wellbutrin SR(Buproprion)</option>
					<option value = "284">Fentanyl patch</option>
					<option value = "285">Benzonatate</option>
					<option value = "286">Lorazepam</option>
					<option value = "287">Acyclovir</option>
					<option value = "288">hydrocodone/APAP</option>
					<option value = "289">Valacyclovir</option>
					<option value = "290">Prednisone</option>
					<option value = "291">Olopatadine 0.1%</option>
					<option value = "292">fluticasone propionate cream 0.05%</option>
					<option value = "293">Indomethacin 50mg</option>
					<option value = "294">Peri Guard - Zinc Oxide 3.8%</option>
					<option value = "295">Hexachlorphene 3%</option>
					<option value = "296">Clobestasol Propionate 0.05%</option>
					<option value = "297">Boiron Amicare Cream (muscle therapy)</option>
					<option value = "298">Termin 8 Athlete's Foot Lotion</option>
					<option value = "299">Menthol cooling gel</option>
					<option value = "300">Eczema therapy lotion</option>
					<option value = "301">poison ivy/oak lotion</option>
					<option value = "302">Anti itch gel, benzyl alcohol</option>
					<option value = "303">Earwax removal system</option>
					<option value = "304">Aveeno Baby Soothing Bath treatment</option>
					<option value = "305">Enfamil Newborn Formula</option>
					<option value = "306">Enfamil Gentlease</option>
					<option value = "307">Immodium</option>
					<option value = "308">Alrex </option>
					<option value = "309">Lotemax </option>
					<option value = "310">lubricant jelly - bacteriostatic</option>
					<option value = "311">LUMIGAN® 0.01%</option>
					<option value = "312">Travatan 0.004%</option>
					<option value = "313">"Adult Diaphoretic</option>
					<option value = "314">rozerem</option>
					<option value = "315">levitra</option>
					<option value = "316">valturna</option>
					<option value = "317">Egg White Protein packs</option>
					<option value = "318">atacand hct</option>
					<option value = "319">enoxaparin sodium</option>
					<option value = "320">zyprexa olanzapine</option>
					<option value = "321">sumatriptan succinate</option>
					<option value = "322">actos pioglitazonoe hcl</option>
					<option value = "323">docusate na</option>
					<option value = "324">seroquel</option>
					<option value = "325">galantamine hydrobromide</option>
					<option value = "326">simcor</option>
					<option value = "327">synthroid</option>
					<option value = "328">opthalmic ointment</option>
					<option value = "329">bowel prep kit</option>
					<option value = "330">lexapro</option>
					<option value = "331">Campral (acamprosate calcium)</option>
					<option value = "332">Pristiq (desvenlafaxine)</option>
					<option value = "333">Silver Sulfadiazine cream</option>
					<option value = "334">lidocane</option>
					<option value = "335">needles</option>
					<option value = "336">triple beam baby scale</option>
					<option value = "337">nutren drinks</option>
					<option value = "338">respirator</option>
					<option value = "339">iv cemstor sets</option>
					<option value = "340">Pramosone</option>
					<option value = "341">Daliresp(Roflumilast)</option>
					<option value = "342">Zoloft(Sertraline)</option>
					<option value = "343">Effexor XL(Venlafaxine)</option>
					<option value = "344">Boniva(Ibandronic acid)</option>
					<option value = "345">Olux-E (clobetasolpropionate foam:0.05%)</option>
					<option value = "346">Finacea (azelaic acid gel:15%)</option>
					<option value = "347">Luxiq (betamethasone valerate foam:0.12%)</option>
					<option value = "348">Epiduo (adapalene:0.1%, benzoylperoxide:2.5%)</option>
					<option value = "349">Jalyn(Dutasteride and Tamsulosin)</option>
					<option value = "350">ALOQUIN® gel</option>
					<option value = "351">Vaginal suppository inserter</option>
				</select>
								<select>
					<option value = "1">- Select -</option>
					<option value = "2">** OTC **</option>
					<option value = "3">Guaifenesin/Dextromethorphan</option>
					<option value = "4">Delsym(Dextromethorphan)</option>
					<option value = "5">Naproxen</option>
					<option value = "6">Aleve samples</option>
					<option value = "7">Ibuprofen</option>
					<option value = "8">Children's APAP</option>
					<option value = "9">Metamucil</option>
					<option value = "10">Cetirizine Tabs</option>
					<option value = "11">Preperation H</option>
					<option value = "12">Naproxen sodium</option>
					<option value = "13">Motrin (ibuprofen)</option>
					<option value = "14">Stainback Headache powder</option>
					<option value = "15">Enablex Darifenacin</option>
					<option value = "16">Glumetza (metformin hydrochloride)</option>
					<option value = "17">Vimovo (naproxen + esomeprazole magnesium)</option>
					<option value = "18">Simcor (niacin ext-release + simvastatin)</option>
					<option value = "19">Analpram advance kit</option>
					<option value = "20">** Eye Drops **</option>
					<option value = "21">astepro (azelastine)</option>
					<option value = "22">alendoronate sodium</option>
					<option value = "23">alendronate sodium</option>
					<option value = "24">detrol (toterodine tartiate)</option>
					<option value = "25">armour thyroid</option>
					<option value = "26">Tylenol ext str (acetaminophen)</option>
					<option value = "27">aspirin (NSAID)</option>
					<option value = "28">Stye-eye relief (Conium maculatum)</option>
					<option value = "29">Activated charcoal</option>
					<option value = "30">Calagesic lotion</option>
					<option value = "31">Arthritis pain relief lotion</option>
					<option value = "32">Nasal decongestant spray (oxymetazoline)</option>
					<option value = "33">nystatin</option>
					<option value = "34">evista raloxifene hcl</option>
					<option value = "35">strattera atomoxetine hcl</option>
					<option value = "36">Excedrin</option>
					<option value = "37">Advil</option>
					<option value = "38">Tylenol XS</option>
					<option value = "39">Triaminic</option>
					<option value = "40">** Psych **</option>
					<option value = "41">geodon ziprasidone hcl</option>
					<option value = "42">** Antibiotics **</option>
					<option value = "43">Amoxicillin</option>
					<option value = "44">Augmentin (amox/clav)</option>
					<option value = "45">Cephaclor</option>
					<option value = "46">Clarithromycin</option>
					<option value = "47">Ceftriaxone</option>
					<option value = "48">Amox/clav</option>
					<option value = "49">Sulfamethoxazole/trimethoprim</option>
					<option value = "50">Doxycycline</option>
					<option value = "51">Sulfamethoxazole/trimethoprim</option>
					<option value = "52">Ciprofloxacin</option>
					<option value = "53">Cephalexin</option>
					<option value = "54">Cephalexin</option>
					<option value = "55">Clarithromycin</option>
					<option value = "56">Amoxicillin</option>
					<option value = "57">Peri Guard - Zinc Oxide</option>
					<option value = "58">Hexachlorphene</option>
					<option value = "59">First aid antiboitic cream</option>
					<option value = "60">ADOX A, doxycycline</option>
					<option value = "61">Amoxicillin</option>
					<option value = "62">Metronidazole</option>
					<option value = "63">neoral cyclosporin</option>
					<option value = "64">Nitrofurantoin</option>
					<option value = "65">** Gastrointestinal **</option>
					<option value = "66">Docusate Sodium</option>
					<option value = "67">Docusate Sodium</option>
					<option value = "68">Omeprazole</option>
					<option value = "69">Ranitidine</option>
					<option value = "70">Antacid tablets</option>
					<option value = "71">pepto-bismol</option>
					<option value = "72">antacid/ calcium supplement</option>
					<option value = "73">stool softener</option>
					<option value = "74">lubiprostone</option>
					<option value = "75">Fiber choice</option>
					<option value = "76">Florastor</option>
					<option value = "78">Glutasolve</option>
					<option value = "79">Senna-Lax (sennosides)</option>
					<option value = "80">Benefiber (Wheat Dextrin)</option>
					<option value = "81">Dulcolax(Bisacodyl)</option>
					<option value = "82">** Anti Seizure **</option>
					<option value = "83">Dilantin/phenytoin</option>
					<option value = "84">Dilantin/phenytoin</option>
					<option value = "85">Neurontin (gabapentin)</option>
					<option value = "86">levetiracetam</option>
					<option value = "87">tegretol (carbamazepine ext release)</option>
					<option value = "88">trileptal (oxcerbazepine)</option>
					<option value = "89">keppra xr levetiracetam</option>
					<option value = "90">** Beta Blockers **</option>
					<option value = "91">Accuretic (quinapril/hydrachlorothiazide)</option>
					<option value = "92">Propanolol ER</option>
					<option value = "93">Lisinopril/hydrochlorothiazide</option>
					<option value = "94">Tiazac (diltiazem)</option>
					<option value = "95">inosorbide mononitrate</option>
					<option value = "96">Exforge(Amlodipine and Valsartan)</option>
					<option value = "97">Lescol(Fluvastatin)</option>
					<option value = "98">Juvisync (simvastatin and sitagliptin)</option>
					<option value = "99">cholestyramine for oral suspension</option>
					<option value = "100">Effient(Prasugrel)</option>
					<option value = "101">Caduet(Amlodipine and Atorvastatin)</option>
					<option value = "102">Azor(Amlodipine and Olmesartan)</option>
					<option value = "103">Xarelto(Rivaroxaban)</option>
					<option value = "104">Aliskiren</option>
					<option value = "105">Benicar HCT(Olmesartan and Hydrochlorothiazide)</option>
					<option value = "106">Aldactone(Spironolactone)</option>
					<option value = "107">Niaspan (niacin extended release)</option>
					<option value = "108">epinephrine 1:10,000</option>
					<option value = "109">exforge ( amlodipine + valsartan)</option>
					<option value = "110">zetia</option>
					<option value = "111">avapro (irbesartan)</option>
					<option value = "112">avalide (irbesartan - hydrochloro thiazide)</option>
					<option value = "113">welchol colesevelam hcl</option>
					<option value = "114">azor amloplipine + olmesartan medoxomil</option>
					<option value = "115">** Vitamins **</option>
					<option value = "116">Calcium + Vit. D</option>
					<option value = "117">Kids vitamin gummies</option>
					<option value = "118">Centrum Women's MVI</option>
					<option value = "119">Women's MVI</option>
					<option value = "120">Bedoyecta MVI</option>
					<option value = "121">Multivitamin</option>
					<option value = "122">PreferaOB One prenatal vitamins</option>
					<option value = "123">Prenatal vitamins</option>
					<option value = "124">Prenatal vitamins + DHA - Neevo DHA</option>
					<option value = "125">Prenatal vitamin</option>
					<option value = "126">Vit. C</option>
					<option value = "127">kids multi</option>
					<option value = "128">kids multi</option>
					<option value = "129">Prenatals</option>
					<option value = "130">Raw Prenatal vitamins</option>
					<option value = "131">Multivitamin</option>
					<option value = "132">Folate - Neevo Mother Nature's</option>
					<option value = "133">folic acid</option>
					<option value = "134">Folic Acid</option>
					<option value = "135">Folic Acid (folic, B6, B12)</option>
					<option value = "136">Calcium 500 + D3</option>
					<option value = "137">Calcium 600 + D3</option>
					<option value = "138">Calcium + Vit. D</option>
					<option value = "139">Calcium + Vit. D</option>
					<option value = "140">Citracal (indiv packs?)</option>
					<option value = "141">Citracal plus Heart Health</option>
					<option value = "142">Citracal Max (indiv packs?)</option>
					<option value = "143">Citracal Max</option>
					<option value = "144">Citracal</option>
					<option value = "145">Cal.Citrate + Vit D</option>
					<option value = "146">Cal.Citrate + Vit D</option>
					<option value = "147">Coral Calcium</option>
					<option value = "148">Cal-EZ</option>
					<option value = "149">Calcium 600 with Vit D</option>
					<option value = "150">Vit D</option>
					<option value = "151">Vit D (D-3)</option>
					<option value = "152">Vit. B1</option>
					<option value = "153">Ferrous Sulfate</option>
					<option value = "154">Women's Vitamins</option>
					<option value = "155">Women's Vitamins</option>
					<option value = "156">Women's Vitamins</option>
					<option value = "157">Golitath Multivitamin</option>
					<option value = "158">Prenatal Vitamins</option>
					<option value = "159">Every Man II Men's vitamin</option>
					<option value = "160">"Max...Fe, Vit C, Vit B"</option>
					<option value = "161">Ferrolet 90 (90 mg Fe)</option>
					<option value = "162">Daily Packs</option>
					<option value = "163">Life Extension mix tablets</option>
					<option value = "164">Centrum MVI</option>
					<option value = "165">Slow-Mag with Calcium</option>
					<option value = "166">Slow-Mag (Magnesium chloride)</option>
					<option value = "167">Chromax Plus</option>
					<option value = "168">Geritol (A,C,E)</option>
					<option value = "169">Black Cohosh Root (pre-menopausal)</option>
					<option value = "170">"Chooz" Antacid/calcium support (indiv packs?)</option>
					<option value = "171">Glucosamine, Chondroitan, MSM</option>
					<option value = "172">Glucosamine, Chondroitan, MSM</option>
					<option value = "173">Men's Multivitamin (men<40)</option>
					<option value = "174">Vitamin E</option>
					<option value = "175">Vitamin B12</option>
					<option value = "176">Vitamin D3</option>
					<option value = "177">Green Tea Slim</option>
					<option value = "178">Sentry Cardio Support</option>
					<option value = "179">Fish Oil Omega-3</option>
					<option value = "180">Grape Glucose (Dex 4)</option>
					<option value = "181">Raspberry Glucose (Dex 4)</option>
					<option value = "182">Watermelon Glucose (Dex 4)</option>
					<option value = "183">Tab-a-Vite (multivitamin w/ B-carotene)</option>
					<option value = "184">SSS Tonic HP Iron B</option>
					<option value = "185">Vita-K Solution (vitamin K)</option>
					<option value = "186">Vita-K Dark Circles (vitamin K)</option>
					<option value = "187">Magnesium Sulfate</option>
					<option value = "188">Vitamin A (HP B-carotene)</option>
					<option value = "189">Vitamin C (HP)</option>
					<option value = "190">Calcium Citrate + Vitamin D</option>
					<option value = "191">PolyVitamin Drops (Children's multivitamin)</option>
					<option value = "192">Vitamin E</option>
					<option value = "193">Vitamin E</option>
					<option value = "194">Citracal</option>
					<option value = "195">Citracal</option>
					<option value = "196">Slow Mag</option>
					<option value = "197">ChromaxPlus</option>
					<option value = "198">Vitamin C and Honey lozenges</option>
					<option value = "199">** Inhalers **</option>
					<option value = "200">Qvar (beclomethasone)</option>
					<option value = "201">Albuterol Sulfate</option>
					<option value = "202">Proair (albuterol sulfate)</option>
					<option value = "203">Flovent diskus</option>
					<option value = "204">Flovent diskus</option>
					<option value = "205">nasal drops</option>
					<option value = "206">symbicort</option>
					<option value = "207">asmanex twisthaler/ mometason furoate</option>
					<option value = "208">ipratropium bromide + albuterol sulfate</option>
					<option value = "209">albuterol sulfate</option>
					<option value = "210">ipratropium bromide</option>
					<option value = "211">ipratropium brromide</option>
					<option value = "212">ipratropium bromide</option>
					<option value = "213">albuterol sulfate</option>
					<option value = "214">Advair HFA (Fluticasone propionate)</option>
					<option value = "215">nebulizer</option>
					<option value = "216">** Allergy Medication **</option>
					<option value = "217">Azelastine</option>
					<option value = "218">Promethazine</option>
					<option value = "219">Clarinex</option>
					<option value = "220">Epi injection 1:1000</option>
					<option value = "221">Diphenhydramine HCl</option>
					<option value = "222">Singulair</option>
					<option value = "223">Singulair</option>
					<option value = "224">Allegra</option>
					<option value = "225">Foradil Aerolizer</option>
					<option value = "226">Drug free allegen block</option>
					<option value = "227">antihistamine</option>
					<option value = "228">antihistamine</option>
					<option value = "229">eye drops</option>
					<option value = "230">hydrocortisone 1%</option>
					<option value = "231">** Anti Fungal **</option>
					<option value = "232">Miconazole 7</option>
					<option value = "233">Miconazole 3</option>
					<option value = "234">Lotrisone (clotrimazole/betamethasone)</option>
					<option value = "235">Nystatin oral</option>
					<option value = "236">Clotrimazole - 1%</option>
					<option value = "237">** Diabetes **</option>
					<option value = "238">Accucheck meters</option>
					<option value = "239">Accu-check DM monitor kit</option>
					<option value = "240">Glucometers + test strips</option>
					<option value = "241">lancets</option>
					<option value = "242">Finger stick devices</option>
					<option value = "243">glucometer, test strip, lancet combo</option>
					<option value = "244">Januvia, sitagliptin phsophate</option>
					<option value = "245">Janumet sitaguptin/metformin</option>
					<option value = "246">Actoplus met, piolitazine HCL and metformin</option>
					<option value = "247">Actos, pioglitazone hcl</option>
					<option value = "248">Kambiguyze, saxagliptin and metformin</option>
					<option value = "249">Metformin</option>
					<option value = "250">lancets</option>
					<option value = "251">glucose tablet</option>
					<option value = "252">Dex 4 Glucose tablets</option>
					<option value = "253">Dex 4 Glucose tablets</option>
					<option value = "254">Single use sterile lancets</option>
					<option value = "255">Diabetes support formula (ALA)</option>
					<option value = "256">novolog flex pen insulin</option>
					<option value = "257">Janumet (sitagliptin metformin HCL)</option>
					<option value = "258">Novolog FlexPen (insulin aspart injection)</option>
					<option value = "259">lancets</option>
					<option value = "260">glucose test strips</option>
					<option value = "261">blood glucose monitoring system</option>
					<option value = "262">monitoring systems</option>
					<option value = "263">Glucometer (Accu-Chek Aviva)</option>
					<option value = "264">Glucometer (Prodigy Autocode)</option>
					<option value = "265">Glyburide(Glibenclamide)</option>
					<option value = "266">lancets</option>
					<option value = "267">Welchol(Colesevelam)</option>
					<option value = "268">** Hygiene **</option>
					<option value = "269">Condoms</option>
					<option value = "270">Aquanil Cleanser</option>
					<option value = "271">Salicyclic Acid shampoo</option>
					<option value = "272">Zinc Shampoo</option>
					<option value = "273">Moisturizing lotion</option>
					<option value = "274">Non Chemical sunscreen SPF 58</option>
					<option value = "275">Lotion with Dimeticone 1.3%</option>
					<option value = "276">Antimicrobial healthy foot lotion</option>
					<option value = "277">Eucerin Calming Itch relief 5 fl oz</option>
					<option value = "278">** MISC **</option>
					<option value = "279">GLucerna 1.2 cal</option>
					<option value = "280">Jevity 1.5 cal</option>
					<option value = "281">Elocon cream</option>
					<option value = "282">Prochlorperazine</option>
					<option value = "283">Wellbutrin SR(Buproprion)</option>
					<option value = "284">Fentanyl patch</option>
					<option value = "285">Benzonatate</option>
					<option value = "286">Lorazepam</option>
					<option value = "287">Acyclovir</option>
					<option value = "288">hydrocodone/APAP</option>
					<option value = "289">Valacyclovir</option>
					<option value = "290">Prednisone</option>
					<option value = "291">Olopatadine 0.1%</option>
					<option value = "292">fluticasone propionate cream 0.05%</option>
					<option value = "293">Indomethacin 50mg</option>
					<option value = "294">Peri Guard - Zinc Oxide 3.8%</option>
					<option value = "295">Hexachlorphene 3%</option>
					<option value = "296">Clobestasol Propionate 0.05%</option>
					<option value = "297">Boiron Amicare Cream (muscle therapy)</option>
					<option value = "298">Termin 8 Athlete's Foot Lotion</option>
					<option value = "299">Menthol cooling gel</option>
					<option value = "300">Eczema therapy lotion</option>
					<option value = "301">poison ivy/oak lotion</option>
					<option value = "302">Anti itch gel, benzyl alcohol</option>
					<option value = "303">Earwax removal system</option>
					<option value = "304">Aveeno Baby Soothing Bath treatment</option>
					<option value = "305">Enfamil Newborn Formula</option>
					<option value = "306">Enfamil Gentlease</option>
					<option value = "307">Immodium</option>
					<option value = "308">Alrex </option>
					<option value = "309">Lotemax </option>
					<option value = "310">lubricant jelly - bacteriostatic</option>
					<option value = "311">LUMIGAN® 0.01%</option>
					<option value = "312">Travatan 0.004%</option>
					<option value = "313">"Adult Diaphoretic</option>
					<option value = "314">rozerem</option>
					<option value = "315">levitra</option>
					<option value = "316">valturna</option>
					<option value = "317">Egg White Protein packs</option>
					<option value = "318">atacand hct</option>
					<option value = "319">enoxaparin sodium</option>
					<option value = "320">zyprexa olanzapine</option>
					<option value = "321">sumatriptan succinate</option>
					<option value = "322">actos pioglitazonoe hcl</option>
					<option value = "323">docusate na</option>
					<option value = "324">seroquel</option>
					<option value = "325">galantamine hydrobromide</option>
					<option value = "326">simcor</option>
					<option value = "327">synthroid</option>
					<option value = "328">opthalmic ointment</option>
					<option value = "329">bowel prep kit</option>
					<option value = "330">lexapro</option>
					<option value = "331">Campral (acamprosate calcium)</option>
					<option value = "332">Pristiq (desvenlafaxine)</option>
					<option value = "333">Silver Sulfadiazine cream</option>
					<option value = "334">lidocane</option>
					<option value = "335">needles</option>
					<option value = "336">triple beam baby scale</option>
					<option value = "337">nutren drinks</option>
					<option value = "338">respirator</option>
					<option value = "339">iv cemstor sets</option>
					<option value = "340">Pramosone</option>
					<option value = "341">Daliresp(Roflumilast)</option>
					<option value = "342">Zoloft(Sertraline)</option>
					<option value = "343">Effexor XL(Venlafaxine)</option>
					<option value = "344">Boniva(Ibandronic acid)</option>
					<option value = "345">Olux-E (clobetasolpropionate foam:0.05%)</option>
					<option value = "346">Finacea (azelaic acid gel:15%)</option>
					<option value = "347">Luxiq (betamethasone valerate foam:0.12%)</option>
					<option value = "348">Epiduo (adapalene:0.1%, benzoylperoxide:2.5%)</option>
					<option value = "349">Jalyn(Dutasteride and Tamsulosin)</option>
					<option value = "350">ALOQUIN® gel</option>
					<option value = "351">Vaginal suppository inserter</option>
				</select>
				
				<h3>Blood Drawn</h3>
				<p>
				<select><option value="1">- Select -</option><option value="2">Yes</option><option value="3">No</option></select><h4>Sample #</h4>&nbsp;<input type="number" id="samplenumber">
				</p>
				
				<h3>Other Condition</h3>
				<select>
					<option value="1">- Select -</option>
					<option value="2">Acid Reflux</option>
					<option value="3">Acne</option>
					<option value="5">Anemia</option>
					<option value="4">Arthritis</option>
					<option value="5">Asthma</option>
					<option value="6">Bronchitis</option>
					<option value="7">Canker Sores</option>
					<option value="8">Carpal Tunnel Syndrome</option>
					<option value="9">Congestive Heart Failure</option>
					<option value="10">Crohn's Disease</option>
					<option value="11">Dandruff</option>
					<option value="12">Deep Vein Thrombosis</option>
					<option value="13">Dehydration</option>
					<option value="14">Diabetes</option>
					<option value="15">Diarrhea</option>
					<option value="16">Diverticulitis</option>
					<option value="17">Ear Infection</option>
					<option value="18">Eczema</option>
					<option value="19">Endometriosis</option>
					<option value="20">Epilepsy</option>
					<option value="21">Fibromyalgia</option>
					<option value="22">Gallbladder Disease</option>
					<option value="23">Gallstones</option>
					<option value="24">Genital Herpes</option>
					<option value="25">Genital Warts</option>
					<option value="26">Glomerulonephritis (Nephritis)</option>
					<option value="27">Gonorrhea</option>
					<option value="28">Gout</option>
					<option value="29">Gum Disease</option>
					<option value="30">Gynecomastia</option>
					<option value="31">Head Lice</option>
					<option value="32">Headache</option>
					<option value="33">Hearing Loss</option>
					<option value="34">Heart Attack</option>
					<option value="35">Heartburn</option>
					<option value="36">Heat Stroke</option>
					<option value="37">Hemorrhage</option>
					<option value="38">Hemorrhoids</option>
					<option value="39">Hepatitis</option>
					<option value="40">Herniated Disc</option>
					<option value="41">HIV/AIDS</option>
					<option value="42">Hives</option>
					<option value="43">Hyperglycemia</option>
					<option value="44">Hyperkalemia</option>
					<option value="45">Hypertenson</option>
					<option value="46">Hyperthyroidism</option>
					<option value="47">Hyopthyroidism</option>
					<option value="48">Influenza</option>
					<option value="49">Irritable Bowel Syndrome</option>
					<option value="50">Itching</option>
					<option value="51">Joint Pain</option>
					<option value="52">Juvenile Diabetes</option>
					<option value="53">Juvenile Rheumatoid Arthritis</option>
					<option value="54">Kidney Disease</option>
					<option value="55">Kidney Stones</option>
					<option value="56">Leukemia</option>
					<option value="57">Liver Failure</option>
					<option value="58">Malaria</option>
					<option value="59">Melena</option>
					<option value="60">Mesothelioma</option>
					<option value="61">Migraine</option>
				</select>
								<select>
					<option value="1">- Select -</option>
					<option value="2">Acid Reflux</option>
					<option value="3">Acne</option>
					<option value="5">Anemia</option>
					<option value="4">Arthritis</option>
					<option value="5">Asthma</option>
					<option value="6">Bronchitis</option>
					<option value="7">Canker Sores</option>
					<option value="8">Carpal Tunnel Syndrome</option>
					<option value="9">Congestive Heart Failure</option>
					<option value="10">Crohn's Disease</option>
					<option value="11">Dandruff</option>
					<option value="12">Deep Vein Thrombosis</option>
					<option value="13">Dehydration</option>
					<option value="14">Diabetes</option>
					<option value="15">Diarrhea</option>
					<option value="16">Diverticulitis</option>
					<option value="17">Ear Infection</option>
					<option value="18">Eczema</option>
					<option value="19">Endometriosis</option>
					<option value="20">Epilepsy</option>
					<option value="21">Fibromyalgia</option>
					<option value="22">Gallbladder Disease</option>
					<option value="23">Gallstones</option>
					<option value="24">Genital Herpes</option>
					<option value="25">Genital Warts</option>
					<option value="26">Glomerulonephritis (Nephritis)</option>
					<option value="27">Gonorrhea</option>
					<option value="28">Gout</option>
					<option value="29">Gum Disease</option>
					<option value="30">Gynecomastia</option>
					<option value="31">Head Lice</option>
					<option value="32">Headache</option>
					<option value="33">Hearing Loss</option>
					<option value="34">Heart Attack</option>
					<option value="35">Heartburn</option>
					<option value="36">Heat Stroke</option>
					<option value="37">Hemorrhage</option>
					<option value="38">Hemorrhoids</option>
					<option value="39">Hepatitis</option>
					<option value="40">Herniated Disc</option>
					<option value="41">HIV/AIDS</option>
					<option value="42">Hives</option>
					<option value="43">Hyperglycemia</option>
					<option value="44">Hyperkalemia</option>
					<option value="45">Hypertenson</option>
					<option value="46">Hyperthyroidism</option>
					<option value="47">Hyopthyroidism</option>
					<option value="48">Influenza</option>
					<option value="49">Irritable Bowel Syndrome</option>
					<option value="50">Itching</option>
					<option value="51">Joint Pain</option>
					<option value="52">Juvenile Diabetes</option>
					<option value="53">Juvenile Rheumatoid Arthritis</option>
					<option value="54">Kidney Disease</option>
					<option value="55">Kidney Stones</option>
					<option value="56">Leukemia</option>
					<option value="57">Liver Failure</option>
					<option value="58">Malaria</option>
					<option value="59">Melena</option>
					<option value="60">Mesothelioma</option>
					<option value="61">Migraine</option>
				</select>
								<select>
					<option value="1">- Select -</option>
					<option value="2">Acid Reflux</option>
					<option value="3">Acne</option>
					<option value="5">Anemia</option>
					<option value="4">Arthritis</option>
					<option value="5">Asthma</option>
					<option value="6">Bronchitis</option>
					<option value="7">Canker Sores</option>
					<option value="8">Carpal Tunnel Syndrome</option>
					<option value="9">Congestive Heart Failure</option>
					<option value="10">Crohn's Disease</option>
					<option value="11">Dandruff</option>
					<option value="12">Deep Vein Thrombosis</option>
					<option value="13">Dehydration</option>
					<option value="14">Diabetes</option>
					<option value="15">Diarrhea</option>
					<option value="16">Diverticulitis</option>
					<option value="17">Ear Infection</option>
					<option value="18">Eczema</option>
					<option value="19">Endometriosis</option>
					<option value="20">Epilepsy</option>
					<option value="21">Fibromyalgia</option>
					<option value="22">Gallbladder Disease</option>
					<option value="23">Gallstones</option>
					<option value="24">Genital Herpes</option>
					<option value="25">Genital Warts</option>
					<option value="26">Glomerulonephritis (Nephritis)</option>
					<option value="27">Gonorrhea</option>
					<option value="28">Gout</option>
					<option value="29">Gum Disease</option>
					<option value="30">Gynecomastia</option>
					<option value="31">Head Lice</option>
					<option value="32">Headache</option>
					<option value="33">Hearing Loss</option>
					<option value="34">Heart Attack</option>
					<option value="35">Heartburn</option>
					<option value="36">Heat Stroke</option>
					<option value="37">Hemorrhage</option>
					<option value="38">Hemorrhoids</option>
					<option value="39">Hepatitis</option>
					<option value="40">Herniated Disc</option>
					<option value="41">HIV/AIDS</option>
					<option value="42">Hives</option>
					<option value="43">Hyperglycemia</option>
					<option value="44">Hyperkalemia</option>
					<option value="45">Hypertenson</option>
					<option value="46">Hyperthyroidism</option>
					<option value="47">Hyopthyroidism</option>
					<option value="48">Influenza</option>
					<option value="49">Irritable Bowel Syndrome</option>
					<option value="50">Itching</option>
					<option value="51">Joint Pain</option>
					<option value="52">Juvenile Diabetes</option>
					<option value="53">Juvenile Rheumatoid Arthritis</option>
					<option value="54">Kidney Disease</option>
					<option value="55">Kidney Stones</option>
					<option value="56">Leukemia</option>
					<option value="57">Liver Failure</option>
					<option value="58">Malaria</option>
					<option value="59">Melena</option>
					<option value="60">Mesothelioma</option>
					<option value="61">Migraine</option>
				</select>

				
			</div>
			
			<div id = "module" style="float:right">
				<h1>Notes</h1>
				<h3>HPI</h3>
				<h:inputTextarea id="hpi" value="" />
				<h3>Overall impression for this visit:</h3>
				<h:inputTextarea id="impression" value="" />
				<h3>Keywords from previous encounter:</h3>
				<h:inputTextarea id="keywords" value="" />
				
							
				<h1>Images of condition/illness</h1>
								
				<a href=""><img src="img/nopic.png"></a>
				<a href=""><img src="img/nopic.png"></a>
				<a href=""><img src="img/nopic.png"></a>
				
			</div>
		</div>
		

		
	</div>
	<BR><BR><BR><BR><BR>
	<div id = "footer">
	<h:commandButton id="submit" value="Submit" action="nextPage"></h:commandButton>
    <p><a href="index.jsp">Log out</a></p>
	</div>
</f:view>
</body>