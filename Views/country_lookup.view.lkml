view: country_lookup {
  label: "Country Lookup"
  derived_table: {
    sql: SELECT 'AFG' as countrycode, "Afghanistan" as countryname, "AF" as code
UNION ALL SELECT "ALA","Åland","AX"
UNION ALL SELECT "ALB","Albania","AL"
UNION ALL SELECT "DZA","Algeria","DZ"
UNION ALL SELECT "ASM","American Samoa","AS"
UNION ALL SELECT "AND","Andorra","AD"
UNION ALL SELECT "AGO","Angola","AO"
UNION ALL SELECT "AIA","Anguilla","AI"
UNION ALL SELECT "ATA","Antarctica","AQ"
UNION ALL SELECT "ATG","Antigua and Barbuda","AG"
UNION ALL SELECT "ARG","Argentina","AR"
UNION ALL SELECT "ARM","Armenia","AM"
UNION ALL SELECT "ABW","Aruba","AW"
UNION ALL SELECT "AUS","Australia","AU"
UNION ALL SELECT "AUT","Austria","AT"
UNION ALL SELECT "AZE","Azerbaijan","AZ"
UNION ALL SELECT "BHS","Bahamas","BS"
UNION ALL SELECT "BHR","Bahrain","BH"
UNION ALL SELECT "BGD","Bangladesh","BD"
UNION ALL SELECT "BRB","Barbados","BB"
UNION ALL SELECT "BLR","Belarus","BY"
UNION ALL SELECT "BEL","Belgium","BE"
UNION ALL SELECT "BLZ","Belize","BZ"
UNION ALL SELECT "BEN","Benin","BJ"
UNION ALL SELECT "BMU","Bermuda","BM"
UNION ALL SELECT "BTN","Bhutan","BT"
UNION ALL SELECT "BOL","Bolivia","BO"
UNION ALL SELECT "BES","Bonaire","BQ"
UNION ALL SELECT "BIH","Bosnia and Herzegovina","BA"
UNION ALL SELECT "BWA","Botswana","BW"
UNION ALL SELECT "BVT","Bouvet Island","BV"
UNION ALL SELECT "BRA","Brazil","BR"
UNION ALL SELECT "IOT","British Indian Ocean Territory","IO"
UNION ALL SELECT "VGB","British Virgin Islands","VG"
UNION ALL SELECT "BRN","Brunei","BN"
UNION ALL SELECT "BGR","Bulgaria","BG"
UNION ALL SELECT "BFA","Burkina Faso","BF"
UNION ALL SELECT "BDI","Burundi","BI"
UNION ALL SELECT "KHM","Cambodia","KH"
UNION ALL SELECT "CMR","Cameroon","CM"
UNION ALL SELECT "CAN","Canada","CA"
UNION ALL SELECT "CPV","Cape Verde","CV"
UNION ALL SELECT "CYM","Cayman Islands","KY"
UNION ALL SELECT "CAF","Central African Republic","CF"
UNION ALL SELECT "TCD","Chad","TD"
UNION ALL SELECT "CHL","Chile","CL"
UNION ALL SELECT "CHN","China","CN"
UNION ALL SELECT "CXR","Christmas Island","CX"
UNION ALL SELECT "CCK","Cocos [Keeling] Islands","CC"
UNION ALL SELECT "COL","Colombia","CO"
UNION ALL SELECT "COM","Comoros","KM"
UNION ALL SELECT "COK","Cook Islands","CK"
UNION ALL SELECT "CRI","Costa Rica","CR"
UNION ALL SELECT "HRV","Croatia","HR"
UNION ALL SELECT "CUB","Cuba","CU"
UNION ALL SELECT "CUW","Curacao","CW"
UNION ALL SELECT "CYP","Cyprus","CY"
UNION ALL SELECT "CZE","Czech Republic","CZ"
UNION ALL SELECT "COD","Democratic Republic of the Congo","CD"
UNION ALL SELECT "DNK","Denmark","DK"
UNION ALL SELECT "DJI","Djibouti","DJ"
UNION ALL SELECT "DMA","Dominica","DM"
UNION ALL SELECT "DOM","Dominican Republic","DO"
UNION ALL SELECT "TLS","East Timor","TL"
UNION ALL SELECT "ECU","Ecuador","EC"
UNION ALL SELECT "EGY","Egypt","EG"
UNION ALL SELECT "SLV","El Salvador","SV"
UNION ALL SELECT "GNQ","Equatorial Guinea","GQ"
UNION ALL SELECT "ERI","Eritrea","ER"
UNION ALL SELECT "EST","Estonia","EE"
UNION ALL SELECT "ETH","Ethiopia","ET"
UNION ALL SELECT "FLK","Falkland Islands","FK"
UNION ALL SELECT "FRO","Faroe Islands","FO"
UNION ALL SELECT "FJI","Fiji","FJ"
UNION ALL SELECT "FIN","Finland","FI"
UNION ALL SELECT "FRA","France","FR"
UNION ALL SELECT "GUF","French Guiana","GF"
UNION ALL SELECT "PYF","French Polynesia","PF"
UNION ALL SELECT "ATF","French Southern Territories","TF"
UNION ALL SELECT "GAB","Gabon","GA"
UNION ALL SELECT "GMB","Gambia","GM"
UNION ALL SELECT "GEO","Georgia","GE"
UNION ALL SELECT "DEU","Germany","DE"
UNION ALL SELECT "GHA","Ghana","GH"
UNION ALL SELECT "GIB","Gibraltar","GI"
UNION ALL SELECT "GRC","Greece","GR"
UNION ALL SELECT "GRL","Greenland","GL"
UNION ALL SELECT "GRD","Grenada","GD"
UNION ALL SELECT "GLP","Guadeloupe","GP"
UNION ALL SELECT "GUM","Guam","GU"
UNION ALL SELECT "GTM","Guatemala","GT"
UNION ALL SELECT "GGY","Guernsey","GG"
UNION ALL SELECT "GIN","Guinea","GN"
UNION ALL SELECT "GNB","Guinea-Bissau","GW"
UNION ALL SELECT "GUY","Guyana","GY"
UNION ALL SELECT "HTI","Haiti","HT"
UNION ALL SELECT "HMD","Heard Island and McDonald Islands","HM"
UNION ALL SELECT "HND","Honduras","HN"
UNION ALL SELECT "HKG","Hong Kong","HK"
UNION ALL SELECT "HUN","Hungary","HU"
UNION ALL SELECT "ISL","Iceland","IS"
UNION ALL SELECT "IND","India","IN"
UNION ALL SELECT "IDN","Indonesia","ID"
UNION ALL SELECT "IRN","Iran","IR"
UNION ALL SELECT "IRQ","Iraq","IQ"
UNION ALL SELECT "IRL","Ireland","IE"
UNION ALL SELECT "IMN","Isle of Man","IM"
UNION ALL SELECT "ISR","Israel","IL"
UNION ALL SELECT "ITA","Italy","IT"
UNION ALL SELECT "CIV","Ivory Coast","CI"
UNION ALL SELECT "JAM","Jamaica","JM"
UNION ALL SELECT "JPN","Japan","JP"
UNION ALL SELECT "JEY","Jersey","JE"
UNION ALL SELECT "JOR","Jordan","JO"
UNION ALL SELECT "KAZ","Kazakhstan","KZ"
UNION ALL SELECT "KEN","Kenya","KE"
UNION ALL SELECT "KIR","Kiribati","KI"
UNION ALL SELECT "XKX","Kosovo","XK"
UNION ALL SELECT "KWT","Kuwait","KW"
UNION ALL SELECT "KGZ","Kyrgyzstan","KG"
UNION ALL SELECT "LAO","Laos","LA"
UNION ALL SELECT "LVA","Latvia","LV"
UNION ALL SELECT "LBN","Lebanon","LB"
UNION ALL SELECT "LSO","Lesotho","LS"
UNION ALL SELECT "LBR","Liberia","LR"
UNION ALL SELECT "LBY","Libya","LY"
UNION ALL SELECT "LIE","Liechtenstein","LI"
UNION ALL SELECT "LTU","Lithuania","LT"
UNION ALL SELECT "LUX","Luxembourg","LU"
UNION ALL SELECT "MAC","Macao","MO"
UNION ALL SELECT "MKD","Macedonia","MK"
UNION ALL SELECT "MDG","Madagascar","MG"
UNION ALL SELECT "MWI","Malawi","MW"
UNION ALL SELECT "MYS","Malaysia","MY"
UNION ALL SELECT "MDV","Maldives","MV"
UNION ALL SELECT "MLI","Mali","ML"
UNION ALL SELECT "MLT","Malta","MT"
UNION ALL SELECT "MHL","Marshall Islands","MH"
UNION ALL SELECT "MTQ","Martinique","MQ"
UNION ALL SELECT "MRT","Mauritania","MR"
UNION ALL SELECT "MUS","Mauritius","MU"
UNION ALL SELECT "MYT","Mayotte","YT"
UNION ALL SELECT "MEX","Mexico","MX"
UNION ALL SELECT "FSM","Micronesia","FM"
UNION ALL SELECT "MDA","Moldova","MD"
UNION ALL SELECT "MCO","Monaco","MC"
UNION ALL SELECT "MNG","Mongolia","MN"
UNION ALL SELECT "MNE","Montenegro","ME"
UNION ALL SELECT "MSR","Montserrat","MS"
UNION ALL SELECT "MAR","Morocco","MA"
UNION ALL SELECT "MOZ","Mozambique","MZ"
UNION ALL SELECT "MMR","Myanmar [Burma]","MM"
UNION ALL SELECT "NAM","Namibia","NA"
UNION ALL SELECT "NRU","Nauru","NR"
UNION ALL SELECT "NPL","Nepal","NP"
UNION ALL SELECT "NLD","Netherlands","NL"
UNION ALL SELECT "NCL","New Caledonia","NC"
UNION ALL SELECT "NZL","New Zealand","NZ"
UNION ALL SELECT "NIC","Nicaragua","NI"
UNION ALL SELECT "NER","Niger","NE"
UNION ALL SELECT "NGA","Nigeria","NG"
UNION ALL SELECT "NIU","Niue","NU"
UNION ALL SELECT "NFK","Norfolk Island","NF"
UNION ALL SELECT "PRK","North Korea","KP"
UNION ALL SELECT "MNP","Northern Mariana Islands","MP"
UNION ALL SELECT "NOR","Norway","NO"
UNION ALL SELECT "OMN","Oman","OM"
UNION ALL SELECT "PAK","Pakistan","PK"
UNION ALL SELECT "PLW","Palau","PW"
UNION ALL SELECT "PSE","Palestine","PS"
UNION ALL SELECT "PAN","Panama","PA"
UNION ALL SELECT "PNG","Papua New Guinea","PG"
UNION ALL SELECT "PRY","Paraguay","PY"
UNION ALL SELECT "PER","Peru","PE"
UNION ALL SELECT "PHL","Philippines","PH"
UNION ALL SELECT "PCN","Pitcairn Islands","PN"
UNION ALL SELECT "POL","Poland","PL"
UNION ALL SELECT "PRT","Portugal","PT"
UNION ALL SELECT "PRI","Puerto Rico","PR"
UNION ALL SELECT "QAT","Qatar","QA"
UNION ALL SELECT "COG","Republic of the Congo","CG"
UNION ALL SELECT "REU","Réunion","RE"
UNION ALL SELECT "ROU","Romania","RO"
UNION ALL SELECT "RUS","Russia","RU"
UNION ALL SELECT "RWA","Rwanda","RW"
UNION ALL SELECT "BLM","Saint Barthélemy","BL"
UNION ALL SELECT "SHN","Saint Helena","SH"
UNION ALL SELECT "KNA","Saint Kitts and Nevis","KN"
UNION ALL SELECT "LCA","Saint Lucia","LC"
UNION ALL SELECT "MAF","Saint Martin","MF"
UNION ALL SELECT "SPM","Saint Pierre and Miquelon","PM"
UNION ALL SELECT "VCT","Saint Vincent and the Grenadines","VC"
UNION ALL SELECT "WSM","Samoa","WS"
UNION ALL SELECT "SMR","San Marino","SM"
UNION ALL SELECT "STP","São Tomé and Príncipe","ST"
UNION ALL SELECT "SAU","Saudi Arabia","SA"
UNION ALL SELECT "SEN","Senegal","SN"
UNION ALL SELECT "SRB","Serbia","RS"
UNION ALL SELECT "SYC","Seychelles","SC"
UNION ALL SELECT "SLE","Sierra Leone","SL"
UNION ALL SELECT "SGP","Singapore","SG"
UNION ALL SELECT "SXM","Sint Maarten","SX"
UNION ALL SELECT "SVK","Slovakia","SK"
UNION ALL SELECT "SVN","Slovenia","SI"
UNION ALL SELECT "SLB","Solomon Islands","SB"
UNION ALL SELECT "SOM","Somalia","SO"
UNION ALL SELECT "ZAF","South Africa","ZA"
UNION ALL SELECT "SGS","South Georgia and the South Sandwich Islands","GS"
UNION ALL SELECT "KOR","South Korea","KR"
UNION ALL SELECT "SSD","South Sudan","SS"
UNION ALL SELECT "ESP","Spain","ES"
UNION ALL SELECT "LKA","Sri Lanka","LK"
UNION ALL SELECT "SDN","Sudan","SD"
UNION ALL SELECT "SUR","Suriname","SR"
UNION ALL SELECT "SJM","Svalbard and Jan Mayen","SJ"
UNION ALL SELECT "SWZ","Swaziland","SZ"
UNION ALL SELECT "SWE","Sweden","SE"
UNION ALL SELECT "CHE","Switzerland","CH"
UNION ALL SELECT "SYR","Syria","SY"
UNION ALL SELECT "TWN","Taiwan","TW"
UNION ALL SELECT "TJK","Tajikistan","TJ"
UNION ALL SELECT "TZA","Tanzania","TZ"
UNION ALL SELECT "THA","Thailand","TH"
UNION ALL SELECT "TGO","Togo","TG"
UNION ALL SELECT "TKL","Tokelau","TK"
UNION ALL SELECT "TON","Tonga","TO"
UNION ALL SELECT "TTO","Trinidad and Tobago","TT"
UNION ALL SELECT "TUN","Tunisia","TN"
UNION ALL SELECT "TUR","Turkey","TR"
UNION ALL SELECT "TKM","Turkmenistan","TM"
UNION ALL SELECT "TCA","Turks and Caicos Islands","TC"
UNION ALL SELECT "TUV","Tuvalu","TV"
UNION ALL SELECT "UMI","U.S. Minor Outlying Islands","UM"
UNION ALL SELECT "VIR","U.S. Virgin Islands","VI"
UNION ALL SELECT "UGA","Uganda","UG"
UNION ALL SELECT "UKR","Ukraine","UA"
UNION ALL SELECT "ARE","United Arab Emirates","AE"
UNION ALL SELECT "GBR","United Kingdom","GB"
UNION ALL SELECT "USA","United States","US"
UNION ALL SELECT "URY","Uruguay","UY"
UNION ALL SELECT "UZB","Uzbekistan","UZ"
UNION ALL SELECT "VUT","Vanuatu","VU"
UNION ALL SELECT "VAT","Vatican City","VA"
UNION ALL SELECT "VEN","Venezuela","VE"
UNION ALL SELECT "VNM","Vietnam","VN"
UNION ALL SELECT "WLF","Wallis and Futuna","WF"
UNION ALL SELECT "ESH","Western Sahara","EH"
UNION ALL SELECT "YEM","Yemen","YE"
UNION ALL SELECT "ZMB","Zambia","ZM"
UNION ALL SELECT "ZWE","Zimbabwe","ZW"
;;
      datagroup_trigger: forever
    }
  }
