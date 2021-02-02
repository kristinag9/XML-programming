function createXMLDocument() {
    let documentImplementation = document.implementation;
    let doc = documentImplementation.createDocument(null, null, null);

    let regions = doc.createElement("regions");
    let region = doc.createElement("region");

    let regionName = doc.createElement("name");
    let regionNameValue = doc.createTextNode("Старопланинска област");
    let regionSituation = doc.createElement("situation");
    let situationPart = doc.createElement("part_of_Bulgaria");
    let situationPartValue = doc.createTextNode("територията между Дунавската равнина и Краищенско-Средногорската природногеографска област и между границата със Сърбия и Черно море");

    let regionDistricts = doc.createElement("districts");
    let partialDistricts = doc.createElement("partial");

    let partialNameVid = doc.createElement("name");
    let partialNameMon = doc.createElement("name");
    let partialNameVr = doc.createElement("name");
    let partialNameSof = doc.createElement("name");
    let partialNameLov = doc.createElement("name");
    let partialNamePl = doc.createElement("name");
    let partialNameGab = doc.createElement("name");
    let partialNameStZ = doc.createElement("name");
    let partialNameVT = doc.createElement("name");
    let partialNameVSl = doc.createElement("name");
    let partialNameTyr = doc.createElement("name");
    let partialNameShu = doc.createElement("name");
    let partialNameBur = doc.createElement("name");
    let partialNameVar = doc.createElement("name");

    let partialNameVidValue = doc.createTextNode("Видинска");
    let partialNameMonValue = doc.createTextNode("Монтана");
    let partialNameVrValue = doc.createTextNode("Врачанска");
    let partialNameSofValue = doc.createTextNode("Софийска");
    let partialNameLovValue = doc.createTextNode("Ловешка");
    let partialNamePlValue = doc.createTextNode("Пловдивска");
    let partialNameGabValue = doc.createTextNode("Габровска");
    let partialNameStzValue = doc.createTextNode("Старозагорска");
    let partialNameVTValue = doc.createTextNode("Великотърновска");
    let partialNameVSlValue = doc.createTextNode("Сливенска");
    let partialNameTyrValue = doc.createTextNode("Търговишка");
    let partialNameShuValue = doc.createTextNode("Шуменска");
    let partialNameBurValue = doc.createTextNode("Бургаска");
    let partialNameVarValue = doc.createTextNode("Варненска");

    let regionRelief = doc.createElement("relief");
    let regionReliefMountain = doc.createElement("mountain");
    regionReliefMountain.setAttribute("has", "Да");
    let reliefType = doc.createElement("type");
    let reliefTypeValue = doc.createTextNode("планински");
    let avgAltitude = doc.createElement("average_altitude");
    avgAltitude.setAttribute("metric_units", "м");
    let avgAltitudeValue = doc.createTextNode("520");

    let regionBorders = doc.createElement("borders");
    let eastBorder = doc.createElement("east");
    let eastBorderName = doc.createElement("name");
    let eastBorderLength = doc.createElement("length");
    eastBorderLength.setAttribute("metric_units", "км");
    let eastBorderNameValue = doc.createTextNode("Черноморска област");
    let eastBorderLengthValue = doc.createTextNode("50");

    let westBorder = doc.createElement("west");
    let westBorderName = doc.createElement("name");
    let westBorderLength = doc.createElement("length");
    westBorderLength.setAttribute("metric_units", "км");
    let westBorderNameValue = doc.createTextNode("Сърбия");
    let westBorderLengthValue = doc.createTextNode("118");

    let northBorder = doc.createElement("north");
    let northBorderName = doc.createElement("name");
    let northBorderLength = doc.createElement("length");
    northBorderLength.setAttribute("metric_units", "км");
    let northBorderNameValue = doc.createTextNode("Дунавска равнина");
    let northBorderLengthValue = doc.createTextNode("530");

    let southBorder = doc.createElement("south");
    let southBorderName = doc.createElement("name");
    let southBorderLength = doc.createElement("length");
    southBorderLength.setAttribute("metric_units", "км");
    let southBorderNameValue = doc.createTextNode("Краищенско-Средногорска област");
    let southBorderLengthValue = doc.createTextNode("460");

    let regionArea = doc.createElement("area");
    let areaPercent = doc.createElement("percent");
    let areaSize = doc.createElement("size");
    areaPercent.setAttribute("percentage", "%");
    let areaPercentValue = doc.createTextNode("23,41");
    areaSize.setAttribute("metric_units", "кв.км");
    let areaSizeValue = doc.createTextNode("31523");

    let regionSubRegions = doc.createElement("subregions");
    let subRegionsSubRegionPb = doc.createElement("subregion");
    let subRegionPbName = doc.createElement("name");
    let subRegionPbNameValue = doc.createTextNode("Предбалкан");
    let subRegionPbSize = doc.createElement("size");
    subRegionPbSize.setAttribute("metric_units", "кв.км");
    let subRegionPbSizeValue = doc.createTextNode("14390");
    let subRegionPbRelief = doc.createElement("relief");
    let subRegionPbReliefType = doc.createElement("type");
    let subRegionPbReliefTypeValue = doc.createTextNode("хълмисто-ридов");
    let subRegionPbAvgAltitude = doc.createElement("average_altitude");
    let subRegionPbAvgAltitudeValue = doc.createTextNode("364");

    let subRegionsSubRegionSt = doc.createElement("subregion");
    let subRegionStName = doc.createElement("name");
    let subRegionStNameValue = doc.createTextNode("Главна Старопланинска верига");
    let subRegionStSize = doc.createElement("size");
    subRegionStSize.setAttribute("metric_units", "кв.км");
    let subRegionStSizeValue = doc.createTextNode("11596");
    let subRegionStRelief = doc.createElement("relief");
    let subRegionStReliefType = doc.createElement("type");
    let subRegionStReliefTypeValue = doc.createTextNode("планински");
    let subRegionStAvgAltitude = doc.createElement("average_altitude");
    let subRegionStAvgAltitudeValue = doc.createTextNode("675");

    let regionClimate = doc.createElement("climate");
    let climateType = doc.createElement("type");
    let climateTypeValue = doc.createTextNode("влажен умерено-континентален");
    let climateAvgTemp = doc.createElement("average_temperature");
    climateAvgTemp.setAttribute("unit", "Целзий");
    let climateAvgTempValue = doc.createTextNode("10,5");
    let climateRainMode = doc.createElement("rain_mode");
    let climateRainModeValue = doc.createTextNode("умереноконтинентален");
    let climateWindType = doc.createElement("wind_type");
    let climateWindTypeValue = doc.createTextNode("западен и северозападен");

    let regionSoil = doc.createElement("soil");
    let regionSoilMostCommon = doc.createElement("most_common");
    let regionSoilMostComValue = doc.createTextNode("сиви горски");

    let regionFlora = doc.createElement("flora");
    let regionFloraValue = doc.createTextNode("Характерните растителни видове са представители на средноевропейската широколистна листопадна растителност.");

    let regionFauna = doc.createElement("fauna");
    let regionFaunaValue = doc.createTextNode("Преобладават средноевропейски и евросибирски видове животни.");

    avgAltitude.setAttribute("metric_units", "м");
    region.setAttribute("id", "2");
    doc.appendChild(regions);
    regions.appendChild(region);

    region.appendChild(regionName);
    regionName.appendChild(regionNameValue);

    region.appendChild(regionSituation);
    regionSituation.appendChild(situationPart);
    situationPart.appendChild(situationPartValue);
    regionSituation.appendChild(regionDistricts);
    regionDistricts.appendChild(partialDistricts);

    partialDistricts.appendChild(partialNameVid);
    partialDistricts.appendChild(partialNameMon);
    partialDistricts.appendChild(partialNameVr);
    partialDistricts.appendChild(partialNameSof);
    partialDistricts.appendChild(partialNameLov);
    partialDistricts.appendChild(partialNamePl);
    partialDistricts.appendChild(partialNameGab);
    partialDistricts.appendChild(partialNameStZ);
    partialDistricts.appendChild(partialNameVT);
    partialDistricts.appendChild(partialNameVSl);
    partialDistricts.appendChild(partialNameTyr);
    partialDistricts.appendChild(partialNameShu);
    partialDistricts.appendChild(partialNameBur);
    partialDistricts.appendChild(partialNameVar);

    partialNameVid.appendChild(partialNameVidValue);
    partialNameMon.appendChild(partialNameMonValue);
    partialNameVr.appendChild(partialNameVrValue);
    partialNameSof.appendChild(partialNameSofValue);
    partialNameLov.appendChild(partialNameLovValue);
    partialNamePl.appendChild(partialNamePlValue);
    partialNameGab.appendChild(partialNameGabValue);
    partialNameStZ.appendChild(partialNameStzValue);
    partialNameVT.appendChild(partialNameVTValue);
    partialNameVSl.appendChild(partialNameVSlValue);
    partialNameTyr.appendChild(partialNameTyrValue);
    partialNameShu.appendChild(partialNameShuValue);
    partialNameBur.appendChild(partialNameBurValue);
    partialNameVar.appendChild(partialNameVarValue);

    region.appendChild(regionRelief);
    regionRelief.appendChild(reliefType);
    regionRelief.appendChild(regionReliefMountain);
    reliefType.appendChild(reliefTypeValue);
    regionRelief.appendChild(avgAltitude);
    avgAltitude.appendChild(avgAltitudeValue);

    region.appendChild(regionBorders);
    regionBorders.appendChild(eastBorder);
    eastBorder.appendChild(eastBorderName);
    eastBorderName.appendChild(eastBorderNameValue);
    eastBorder.appendChild(eastBorderLength);
    eastBorderLength.appendChild(eastBorderLengthValue);

    regionBorders.appendChild(westBorder);
    westBorder.appendChild(westBorderName);
    westBorderName.appendChild(westBorderNameValue);
    westBorder.appendChild(westBorderLength);
    westBorderLength.appendChild(westBorderLengthValue);

    regionBorders.appendChild(northBorder);
    northBorder.appendChild(northBorderName);
    northBorderName.appendChild(northBorderNameValue);
    northBorder.appendChild(northBorderLength);
    northBorderLength.appendChild(northBorderLengthValue);

    regionBorders.appendChild(southBorder);
    southBorder.appendChild(southBorderName);
    southBorderName.appendChild(southBorderNameValue);
    southBorder.appendChild(southBorderLength);
    southBorderLength.appendChild(southBorderLengthValue);

    region.appendChild(regionArea);
    regionArea.appendChild(areaPercent);
    areaPercent.appendChild(areaPercentValue);
    regionArea.appendChild(areaSize);
    areaSize.appendChild(areaSizeValue);

    region.appendChild(regionSubRegions);
    regionSubRegions.appendChild(subRegionsSubRegionPb);
    subRegionsSubRegionPb.appendChild(subRegionPbName);
    subRegionPbName.appendChild(subRegionPbNameValue);
    subRegionsSubRegionPb.appendChild(subRegionPbSize);
    subRegionPbSize.appendChild(subRegionPbSizeValue);

    subRegionsSubRegionPb.appendChild(subRegionPbRelief);
    subRegionPbRelief.appendChild(subRegionPbReliefType);
    subRegionPbReliefType.appendChild(subRegionPbReliefTypeValue);
    subRegionPbRelief.appendChild(subRegionPbAvgAltitude);
    subRegionPbAvgAltitude.appendChild(subRegionPbAvgAltitudeValue);

    region.appendChild(regionSubRegions);
    regionSubRegions.appendChild(subRegionsSubRegionSt);
    subRegionsSubRegionSt.appendChild(subRegionStName);
    subRegionStName.appendChild(subRegionStNameValue);
    subRegionsSubRegionSt.appendChild(subRegionStSize);
    subRegionStSize.appendChild(subRegionStSizeValue);

    subRegionsSubRegionSt.appendChild(subRegionStRelief);
    subRegionStRelief.appendChild(subRegionStReliefType);
    subRegionStReliefType.appendChild(subRegionStReliefTypeValue);
    subRegionStRelief.appendChild(subRegionStAvgAltitude);
    subRegionStAvgAltitude.appendChild(subRegionStAvgAltitudeValue);

    region.appendChild(regionClimate);
    regionClimate.appendChild(climateType);
    climateType.appendChild(climateTypeValue);
    regionClimate.appendChild(climateAvgTemp);
    climateAvgTemp.appendChild(climateAvgTempValue);
    regionClimate.appendChild(climateRainMode);
    climateRainMode.appendChild(climateRainModeValue);
    regionClimate.appendChild(climateWindType);
    climateWindType.appendChild(climateWindTypeValue);

    region.appendChild(regionSoil);
    regionSoil.appendChild(regionSoilMostCommon);
    regionSoilMostCommon.appendChild(regionSoilMostComValue);

    region.appendChild(regionFlora);
    regionFlora.appendChild(regionFloraValue);

    region.appendChild(regionFauna);
    regionFauna.appendChild(regionFaunaValue);

    return doc;
}