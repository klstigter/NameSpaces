/// <summary>
/// Codeunit TestNamespace (ID 50141).
/// </summary>
codeunit 50141 TestNamespace
{
    trigger OnRun()
    begin

    end;

    var
        myInt: Integer;

    /// <summary>
    /// CallHelloWorld.
    /// </summary>
    procedure CallHelloWorld()
    var
        Str: text;
        xmlStr: text;
        xmldoc: XmlDocument;
        xmlElement: XmlElement;
        xmlRootElement: XmlElement;
        xmlNode: XmlNode;
        xmlNodeList: XmlNodeList;
        xmlNode2: XmlNode;
        xmlNodeList2: XmlNodeList;
        xmlNode3: XmlNode;
        xmlNodeList3: XmlNodeList;
        xmlNode4: XmlNode;
        xmlNodeList4: XmlNodeList;
        xmlNsMng: XmlNamespaceManager;
        xmlNsTbl: XmlNameTable;
        result: text;
    begin
        xmlStr := '<x:Envelope xmlns:x="http://schemas.xmlsoap.org/soap/envelope/" xmlns:hai="urn:microsoft-dynamics-schemas/codeunit/haiSayHello"> ';
        xmlStr += '<x:Header/><x:Body><hai:SayHello><hai:test>how to get this value</hai:test></hai:SayHello></x:Body></x:Envelope>';
        XmlDocument.ReadFrom(xmlStr, xmldoc);

        xmlNsTbl := xmldoc.NameTable;
        xmlNsMng.NameTable(xmldoc.NameTable);
        xmlNsMng.AddNamespace('x', '"http://schemas.xmlsoap.org/soap/envelope/"');
        xmlNsMng.AddNamespace('hai', '"urn:microsoft-dynamics-schemas/codeunit/SealPDF"');
        xmldoc.GetRoot(xmlrootElement);
        IF xmlRootElement.SelectSingleNode('//x:Body/sea:StartProcess', xmlNsMng, xmlNode) THEN;

        /*
        xmldoc.GetRoot(xmlrootElement);
        xmlNodeList := xmlRootElement.GetChildNodes();
        foreach xmlNode in xmlnodelist do begin
            if xmlnode.IsXmlElement then begin
                if xmlNode.AsXmlElement().Name = 'x:Body' then begin
                    xmlNodeList2 := xmlNode.AsXmlElement().GetChildNodes();
                    foreach xmlNode2 in xmlnodelist2 do begin
                        xmlNodeList3 := xmlNode2.AsXmlElement().GetChildNodes();
                        foreach xmlNode3 in xmlnodelist3 do begin
                            if xmlNode3.IsXmlElement then
                                xmlNodeList4 := xmlNode3.AsXmlElement().GetChildNodes();
                            //if xmlNode3.IsXmlText then
                            //    xmlNode3.AsXmlText().SelectNodes('/hai:SayHello', xmlNsMng, xmlNodeList4);
                            foreach xmlNode4 in xmlnodelist4 do begin
                                if xmlNode4.IsXmlElement then
                                    message(xmlnode4.AsXmlElement().InnerText);
                                if xmlnode.IsXmlText then
                                    message(xmlNode4.AsXmlText().Value);
                            end;
                        end;
                    end;
                end;
            end;
        end;
        */
    end;
}