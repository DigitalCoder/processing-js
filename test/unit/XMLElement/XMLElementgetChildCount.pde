String sites =  "";

sites = "<?xml version='1.0'?>\n"+
        "<a></a>";

XMLElement xml = XMLElement.parse(sites);
int numSites = xml.getChildCount();
_checkEqual(numSites,0);


sites = "<?xml version='1.0'?>\n"+
        "<a>\n"+
        "  <b>\n"+
        "    <c>text c</c>\n"+
        "  </b>\n"+
        "  <b>text b</b>\n"+
        "</a>";

XMLElement xml = new XMLElement(sites);
int numSites = xml.getChildCount();
_checkEqual(numSites,2);