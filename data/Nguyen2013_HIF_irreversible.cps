<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.42 (Build 284) (http://www.copasi.org) at 2023-12-13T23:28:40Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="42" versionDevel="284" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_6" name="Constant flux (irreversible)" type="PreDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_6">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-12-06T16:12:41Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        v
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_49" name="v" order="0" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_13" name="Mass action (irreversible)" type="MassAction" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_13">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000163" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for irreversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does not include any reverse process that creates the reactants from the products. The change of a product quantity is proportional to the quantity of one reactant.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_80" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_81" name="substrate" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="function for Catalysis" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T17:31:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k*Enzyme*(O2/(Km+O2))*(S/(Km1+S))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_275" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_274" name="Enzyme" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_273" name="O2" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_272" name="Km" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_266" name="S" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_276" name="Km1" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="function fro SMM" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T17:31:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kcat*enz*(S/(Km+S))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_282" name="kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_281" name="enz" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_280" name="S" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_279" name="Km" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Nguyen2013 - Dynamic model of HIF regulation in hypoxia" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="nmol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go.ref:GO:0018126"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:go.ref:GO:0097411"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:mamo:MAMO:0000046"/>
    <bqbiol:hasTaxon rdf:resource="urn:miriam:taxonomy:9606"/>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:23390316"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T16:12:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>tiwarik@babraham.ac.uk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Tiwari</vCard:Family>
            <vCard:Given>Krishna</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>Babraham Institute</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      Its a mathematcial model explaining regulation of HIF via FIH and oxygen. Model is further validated by Experimental data and various hypothesis has been tested on the same.
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="Cytosol" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T16:15:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_1" name="Nucleus" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T16:50:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="HIFalpha" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T16:23:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="HIFalpha-pOH" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T16:32:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="VHL" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T16:33:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="FIH" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T16:35:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="HIFalpha-aOH" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T16:35:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="PHD" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T16:35:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="HIFalpha-aOHpOH" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T16:47:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="O2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T16:47:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="HIFalpha_n" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T16:55:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="PHD_n" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T16:58:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="HIFalpha_n-pOH" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T17:02:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="VHL_n" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T17:06:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="HIFalpha_n-aOH" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T17:08:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="HIFalpha_n-aOHpOH" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T17:20:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="HIFB" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T17:22:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="HIFd" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T17:23:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="HIFd_HRE" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T17:23:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="HRE" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T17:23:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="mRNA" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T17:26:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="Protein" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T17:29:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="Luciferase" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T17:30:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="FIH_n" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-09T14:21:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="HIF_tot" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-09T14:47:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="x" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-09T15:03:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="R1-HIF1alpha synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T16:22:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_247" name="v" value="0.005"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="Parameter_247"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="R2-HIFalpha cons degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T16:22:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_248" name="k1" value="0.0002"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_248"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="R10-HIFalpha_n_nuclear_export" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T16:22:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_249" name="k1" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_249"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="R25-PHD degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T16:22:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_250" name="k1" value="1e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_250"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="R13-HIFalpha-aOH_nuclear_import" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T16:22:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_251" name="k1" value="0.0002"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_251"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="R14-HIFalpha-aOH_n_nuclear_export" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T16:22:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_252" name="k1" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_252"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="R15-HIFalpha_n_hydroxylation_PHD_n" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T16:22:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_253" name="k" value="0.045"/>
          <Constant key="Parameter_254" name="Km" value="250"/>
          <Constant key="Parameter_255" name="Km1" value="100"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Parameter_253"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Parameter_254"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Parameter_255"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="R16-HIFalpha_n-pOH degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T16:22:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_256" name="kcat" value="0.1"/>
          <Constant key="Parameter_257" name="Km" value="150"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Parameter_256"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Parameter_257"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="R17-HIFalpha_n_hydroxylation_FIH_n" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T16:22:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_21" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_258" name="k" value="0.4"/>
          <Constant key="Parameter_259" name="Km" value="90"/>
          <Constant key="Parameter_260" name="Km1" value="20"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Parameter_258"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Parameter_259"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Parameter_260"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="R3-HIFalpha_hydroxylation_PHD" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T16:22:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_261" name="k" value="0.045"/>
          <Constant key="Parameter_262" name="Km" value="250"/>
          <Constant key="Parameter_263" name="Km1" value="100"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Parameter_261"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Parameter_262"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Parameter_263"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="R4-HIFalpha-pOH degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T16:22:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_264" name="kcat" value="0.1"/>
          <Constant key="Parameter_265" name="Km" value="150"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Parameter_264"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Parameter_265"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="R5-HIFalpha_hydroxylation_FIH" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T16:22:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_266" name="k" value="0.4"/>
          <Constant key="Parameter_267" name="Km" value="90"/>
          <Constant key="Parameter_268" name="Km1" value="20"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Parameter_266"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Parameter_267"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Parameter_268"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="R6-HIFalpha-aOH_dehydroxylation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T16:22:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_269" name="k1" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_269"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="R7-HIFalpha-aOH_hydroxylation_PHD" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T16:22:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_270" name="k" value="0.003"/>
          <Constant key="Parameter_271" name="Km" value="250"/>
          <Constant key="Parameter_272" name="Km1" value="100"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Parameter_270"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Parameter_271"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Parameter_272"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="R8-HIFalpha-aOHpOH degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T16:22:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_273" name="kcat" value="0.01"/>
          <Constant key="Parameter_274" name="Km" value="150"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Parameter_273"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Parameter_274"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="R9-HIF1alpha_nuclear_import" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T16:22:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_275" name="k1" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_275"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="R18-HIFalpha_n-aOH degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T17:10:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_276" name="k1" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_276"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="R19-HIFalpha_n-aOH_hydroxylation_PHD_n" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T17:10:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_277" name="k" value="0.003"/>
          <Constant key="Parameter_278" name="Km" value="250"/>
          <Constant key="Parameter_279" name="Km1" value="100"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Parameter_277"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Parameter_278"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Parameter_279"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="R20-HIFalpha_n-aOHpOH degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T17:10:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_280" name="kcat" value="0.01"/>
          <Constant key="Parameter_281" name="Km" value="150"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Parameter_280"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Parameter_281"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="R23-mRNA transcription" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T17:10:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_286" name="k1" value="0.0016"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_286"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="R24-PHD synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T17:10:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_287" name="k1" value="0.002"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_287"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="R26-mRNA degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T17:10:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_288" name="k1" value="0.00038"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_288"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="R27-mRNA_translation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T17:10:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_289" name="k1" value="0.009"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_289"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="R28-Protein degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T17:30:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_290" name="k1" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_290"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="R29-Protein Luciferase activity" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T17:30:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_291" name="k1" value="0.02"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_291"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="R11-PHD nuclear import" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-09T14:11:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_292" name="k1" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_292"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="R12-PHD_n nuclear export" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-09T14:11:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_293" name="k1" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_293"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="R21-HIF1alphan_HIF1B binding (forward)" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_29">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_200" name="k1" value="0.0005"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_200"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_8"/>
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="R21-HIF1alphan_HIF1B binding (backward)" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_30">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_202" name="k1" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_202"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="R22-HIFd-HRE_binding (forward)" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_31">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_203" name="k1" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_203"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_15"/>
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="R22-HIFd-HRE_binding (backward)" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_32">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_199" name="k1" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_199"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfEvents>
      <Event key="Event_0" name="hypoxia" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-09T15:00:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Reference=Time> > 0
        </TriggerExpression>
        <PriorityExpression>
          0
        </PriorityExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Cytosol],Vector=Metabolites[O2]">
            <Expression>
              &lt;CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Cytosol],Vector=Metabolites[O2],Reference=Concentration>*(1-&lt;CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Values[x],Reference=Value>/21)
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
    </ListOfEvents>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Cytosol]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Nucleus]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Cytosol],Vector=Metabolites[HIFalpha]" value="3011070428500000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Cytosol],Vector=Metabolites[HIFalpha-pOH]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Cytosol],Vector=Metabolites[VHL]" value="30110704285000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Cytosol],Vector=Metabolites[FIH]" value="66243549427000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Cytosol],Vector=Metabolites[HIFalpha-aOH]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Cytosol],Vector=Metabolites[PHD]" value="60221408570000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Cytosol],Vector=Metabolites[HIFalpha-aOHpOH]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Cytosol],Vector=Metabolites[O2]" value="60221408570000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Nucleus],Vector=Metabolites[HIFalpha_n]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Nucleus],Vector=Metabolites[PHD_n]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Nucleus],Vector=Metabolites[HIFalpha_n-pOH]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Nucleus],Vector=Metabolites[VHL_n]" value="30110704285000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Nucleus],Vector=Metabolites[HIFalpha_n-aOH]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Nucleus],Vector=Metabolites[HIFalpha_n-aOHpOH]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Nucleus],Vector=Metabolites[HIFB]" value="1.02376394569e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Nucleus],Vector=Metabolites[HIFd]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Nucleus],Vector=Metabolites[HIFd_HRE]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Nucleus],Vector=Metabolites[HRE]" value="30110704285000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Cytosol],Vector=Metabolites[mRNA]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Cytosol],Vector=Metabolites[Protein]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Cytosol],Vector=Metabolites[Luciferase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Nucleus],Vector=Metabolites[FIH_n]" value="24088563428000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Values[HIF_tot]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Values[x]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R1-HIF1alpha synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R1-HIF1alpha synthesis],ParameterGroup=Parameters,Parameter=v" value="0.0050000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R2-HIFalpha cons degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R2-HIFalpha cons degradation],ParameterGroup=Parameters,Parameter=k1" value="0.00020000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R10-HIFalpha_n_nuclear_export]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R10-HIFalpha_n_nuclear_export],ParameterGroup=Parameters,Parameter=k1" value="0.001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R25-PHD degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R25-PHD degradation],ParameterGroup=Parameters,Parameter=k1" value="1.0000000000000001e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R13-HIFalpha-aOH_nuclear_import]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R13-HIFalpha-aOH_nuclear_import],ParameterGroup=Parameters,Parameter=k1" value="0.00020000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R14-HIFalpha-aOH_n_nuclear_export]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R14-HIFalpha-aOH_n_nuclear_export],ParameterGroup=Parameters,Parameter=k1" value="0.0001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R15-HIFalpha_n_hydroxylation_PHD_n]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R15-HIFalpha_n_hydroxylation_PHD_n],ParameterGroup=Parameters,Parameter=k" value="0.044999999999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R15-HIFalpha_n_hydroxylation_PHD_n],ParameterGroup=Parameters,Parameter=Km" value="250" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R15-HIFalpha_n_hydroxylation_PHD_n],ParameterGroup=Parameters,Parameter=Km1" value="100" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R16-HIFalpha_n-pOH degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R16-HIFalpha_n-pOH degradation],ParameterGroup=Parameters,Parameter=kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R16-HIFalpha_n-pOH degradation],ParameterGroup=Parameters,Parameter=Km" value="150" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R17-HIFalpha_n_hydroxylation_FIH_n]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R17-HIFalpha_n_hydroxylation_FIH_n],ParameterGroup=Parameters,Parameter=k" value="0.40000000000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R17-HIFalpha_n_hydroxylation_FIH_n],ParameterGroup=Parameters,Parameter=Km" value="90" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R17-HIFalpha_n_hydroxylation_FIH_n],ParameterGroup=Parameters,Parameter=Km1" value="20" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R3-HIFalpha_hydroxylation_PHD]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R3-HIFalpha_hydroxylation_PHD],ParameterGroup=Parameters,Parameter=k" value="0.044999999999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R3-HIFalpha_hydroxylation_PHD],ParameterGroup=Parameters,Parameter=Km" value="250" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R3-HIFalpha_hydroxylation_PHD],ParameterGroup=Parameters,Parameter=Km1" value="100" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R4-HIFalpha-pOH degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R4-HIFalpha-pOH degradation],ParameterGroup=Parameters,Parameter=kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R4-HIFalpha-pOH degradation],ParameterGroup=Parameters,Parameter=Km" value="150" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R5-HIFalpha_hydroxylation_FIH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R5-HIFalpha_hydroxylation_FIH],ParameterGroup=Parameters,Parameter=k" value="0.40000000000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R5-HIFalpha_hydroxylation_FIH],ParameterGroup=Parameters,Parameter=Km" value="90" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R5-HIFalpha_hydroxylation_FIH],ParameterGroup=Parameters,Parameter=Km1" value="20" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R6-HIFalpha-aOH_dehydroxylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R6-HIFalpha-aOH_dehydroxylation],ParameterGroup=Parameters,Parameter=k1" value="0.001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R7-HIFalpha-aOH_hydroxylation_PHD]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R7-HIFalpha-aOH_hydroxylation_PHD],ParameterGroup=Parameters,Parameter=k" value="0.0030000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R7-HIFalpha-aOH_hydroxylation_PHD],ParameterGroup=Parameters,Parameter=Km" value="250" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R7-HIFalpha-aOH_hydroxylation_PHD],ParameterGroup=Parameters,Parameter=Km1" value="100" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R8-HIFalpha-aOHpOH degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R8-HIFalpha-aOHpOH degradation],ParameterGroup=Parameters,Parameter=kcat" value="0.01" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R8-HIFalpha-aOHpOH degradation],ParameterGroup=Parameters,Parameter=Km" value="150" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R9-HIF1alpha_nuclear_import]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R9-HIF1alpha_nuclear_import],ParameterGroup=Parameters,Parameter=k1" value="0.001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R18-HIFalpha_n-aOH degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R18-HIFalpha_n-aOH degradation],ParameterGroup=Parameters,Parameter=k1" value="0.001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R19-HIFalpha_n-aOH_hydroxylation_PHD_n]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R19-HIFalpha_n-aOH_hydroxylation_PHD_n],ParameterGroup=Parameters,Parameter=k" value="0.0030000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R19-HIFalpha_n-aOH_hydroxylation_PHD_n],ParameterGroup=Parameters,Parameter=Km" value="250" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R19-HIFalpha_n-aOH_hydroxylation_PHD_n],ParameterGroup=Parameters,Parameter=Km1" value="100" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R20-HIFalpha_n-aOHpOH degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R20-HIFalpha_n-aOHpOH degradation],ParameterGroup=Parameters,Parameter=kcat" value="0.01" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R20-HIFalpha_n-aOHpOH degradation],ParameterGroup=Parameters,Parameter=Km" value="150" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R23-mRNA transcription]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R23-mRNA transcription],ParameterGroup=Parameters,Parameter=k1" value="0.0016000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R24-PHD synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R24-PHD synthesis],ParameterGroup=Parameters,Parameter=k1" value="0.002" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R26-mRNA degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R26-mRNA degradation],ParameterGroup=Parameters,Parameter=k1" value="0.00038000000000000002" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R27-mRNA_translation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R27-mRNA_translation],ParameterGroup=Parameters,Parameter=k1" value="0.0089999999999999993" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R28-Protein degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R28-Protein degradation],ParameterGroup=Parameters,Parameter=k1" value="0.0001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R29-Protein Luciferase activity]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R29-Protein Luciferase activity],ParameterGroup=Parameters,Parameter=k1" value="0.02" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R11-PHD nuclear import]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R11-PHD nuclear import],ParameterGroup=Parameters,Parameter=k1" value="0.0001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R12-PHD_n nuclear export]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R12-PHD_n nuclear export],ParameterGroup=Parameters,Parameter=k1" value="0.0001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R21-HIF1alphan_HIF1B binding (forward)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R21-HIF1alphan_HIF1B binding (forward)],ParameterGroup=Parameters,Parameter=k1" value="0.00050000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R21-HIF1alphan_HIF1B binding (backward)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R21-HIF1alphan_HIF1B binding (backward)],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R22-HIFd-HRE_binding (forward)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R22-HIFd-HRE_binding (forward)],ParameterGroup=Parameters,Parameter=k1" value="0.001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R22-HIFd-HRE_binding (backward)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Reactions[R22-HIFd-HRE_binding (backward)],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 3011070428500000 0 0 60221408570000000 0 0 0 0 0 0 0 0 0 0 0 1.02376394569e+17 30110704285000000 30110704285000000 66243549427000000 60221408570000000 30110704285000000 24088563428000000 1 1 0 0 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_17" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="0"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
        <Parameter name="Target Criterion" type="string" value="Distance and Rate"/>
      </Method>
    </Task>
    <Task key="Task_18" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_21" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="432"/>
        <Parameter name="Duration" type="float" value="43200"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_19" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="1"/>
            <Parameter name="Type" type="unsignedInteger" value="1"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Values[x],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="20"/>
            <Parameter name="Maximum" type="float" value="18"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Values" type="string" value=""/>
            <Parameter name="Use Values" type="bool" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
        <Parameter name="Continue on Error" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_20" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_21" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
      </Problem>
      <Method name="Random Search" type="RandomSearch">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Iterations" type="unsignedInteger" value="100000"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_22" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <Parameter name="Create Parameter Sets" type="bool" value="0"/>
        <Parameter name="Use Time Sens" type="bool" value="0"/>
        <Parameter name="Time-Sens" type="cn" value=""/>
        <ParameterGroup name="Experiment Set">
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
        <Parameter name="Stop after # Stalled Generations" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_23" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_17"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_24" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_25" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="0.0001"/>
      </Method>
    </Task>
    <Task key="Task_26" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_18" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="7"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="41"/>
          </ParameterGroup>
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="9.9999999999999998e-13"/>
      </Method>
    </Task>
    <Task key="Task_27" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_19" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_28" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_29" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_20" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_17"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_30" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <ParameterGroup name="ListOfParameters">
        </ParameterGroup>
        <ParameterGroup name="ListOfTargets">
        </ParameterGroup>
      </Problem>
      <Method name="LSODA Sensitivities" type="Sensitivities(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_11" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_12" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_13" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_14" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_15" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_16" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_17" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_18" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_19" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_20" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_21" name="Time-Course" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Result"/>
      </Footer>
    </Report>
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="Concentrations, Volumes, and Global Quantity Values" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[HIFalpha]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Cytosol],Vector=Metabolites[HIFalpha],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[HIFalpha-pOH]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Cytosol],Vector=Metabolites[HIFalpha-pOH],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[VHL]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Cytosol],Vector=Metabolites[VHL],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[FIH]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Cytosol],Vector=Metabolites[FIH],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[HIFalpha-aOH]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Cytosol],Vector=Metabolites[HIFalpha-aOH],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PHD]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Cytosol],Vector=Metabolites[PHD],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[HIFalpha-aOHpOH]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Cytosol],Vector=Metabolites[HIFalpha-aOHpOH],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[O2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Cytosol],Vector=Metabolites[O2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[HIFalpha_n]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Nucleus],Vector=Metabolites[HIFalpha_n],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PHD_n]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Nucleus],Vector=Metabolites[PHD_n],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[HIFalpha_n-pOH]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Nucleus],Vector=Metabolites[HIFalpha_n-pOH],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[VHL_n]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Nucleus],Vector=Metabolites[VHL_n],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[HIFalpha_n-aOH]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Nucleus],Vector=Metabolites[HIFalpha_n-aOH],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[HIFalpha_n-aOHpOH]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Nucleus],Vector=Metabolites[HIFalpha_n-aOHpOH],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[HIFB]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Nucleus],Vector=Metabolites[HIFB],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[HIFd]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Nucleus],Vector=Metabolites[HIFd],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[HIFd_HRE]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Nucleus],Vector=Metabolites[HIFd_HRE],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[HRE]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Nucleus],Vector=Metabolites[HRE],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[mRNA]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Cytosol],Vector=Metabolites[mRNA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Protein]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Cytosol],Vector=Metabolites[Protein],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Luciferase]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Cytosol],Vector=Metabolites[Luciferase],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[FIH_n]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Nguyen2013 - Dynamic model of HIF regulation in hypoxia,Vector=Compartments[Nucleus],Vector=Metabolites[FIH_n],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <ListOfLayouts xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <Layout key="Layout_2" name="COPASI autolayout">
      <Dimensions width="821.95278161532133" height="963.86211387773028"/>
      <ListOfMetabGlyphs>
        <MetaboliteGlyph key="Layout_3" name="MetabGlyph" metabolite="Metabolite_17">
          <BoundingBox>
            <Position x="651.89422373154753" y="319.13611206713091"/>
            <Dimensions width="52" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_4" name="MetabGlyph" metabolite="Metabolite_2">
          <BoundingBox>
            <Position x="260.56489239935433" y="526.56121411950767"/>
            <Dimensions width="52" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_5" name="MetabGlyph" metabolite="">
          <BoundingBox>
            <Position x="81.653367220579469" y="897.47997712217989"/>
            <Dimensions width="116" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_6" name="MetabGlyph" metabolite="Metabolite_6">
          <BoundingBox>
            <Position x="264.22485312548866" y="583.42962738289089"/>
            <Dimensions width="244" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_7" name="MetabGlyph" metabolite="Metabolite_8">
          <BoundingBox>
            <Position x="179.90312957969275" y="778.80153006402065"/>
            <Dimensions width="164" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_8" name="MetabGlyph" metabolite="Metabolite_1">
          <BoundingBox>
            <Position x="402.10186426530697" y="659.77369639599533"/>
            <Dimensions width="196" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_9" name="MetabGlyph" metabolite="Metabolite_3">
          <BoundingBox>
            <Position x="544.28455197628205" y="847.14584830492413"/>
            <Dimensions width="52" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_10" name="MetabGlyph" metabolite="Metabolite_18">
          <BoundingBox>
            <Position x="382.99965628046152" y="214.81733662008901"/>
            <Dimensions width="68" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_11" name="MetabGlyph" metabolite="Metabolite_14">
          <BoundingBox>
            <Position x="190.78630436913687" y="952.75189994285461"/>
            <Dimensions width="84" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_12" name="MetabGlyph" metabolite="Metabolite_7">
          <BoundingBox>
            <Position x="323.98931337020917" y="693.75212028845317"/>
            <Dimensions width="36" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_13" name="MetabGlyph" metabolite="">
          <BoundingBox>
            <Position x="575.59591053042277" y="718.9807919682346"/>
            <Dimensions width="228" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_14" name="MetabGlyph" metabolite="Metabolite_5">
          <BoundingBox>
            <Position x="462.01876384286754" y="518.62498425633362"/>
            <Dimensions width="52" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_15" name="MetabGlyph" metabolite="Metabolite_15">
          <BoundingBox>
            <Position x="591.65108103697844" y="217.26491477256963"/>
            <Dimensions width="68" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_16" name="MetabGlyph" metabolite="Metabolite_20">
          <BoundingBox>
            <Position x="524.68302786771676" y="3.2076810517849026"/>
            <Dimensions width="164" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_17" name="MetabGlyph" metabolite="Metabolite_13">
          <BoundingBox>
            <Position x="0" y="597.95424210094711"/>
            <Dimensions width="276" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_18" name="MetabGlyph" metabolite="Metabolite_0">
          <BoundingBox>
            <Position x="351.79016563149059" y="815.52390236804013"/>
            <Dimensions width="132" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_19" name="MetabGlyph" metabolite="Metabolite_19">
          <BoundingBox>
            <Position x="398.60797397021889" y="56.025365997835024"/>
            <Dimensions width="116" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_20" name="MetabGlyph" metabolite="Metabolite_4">
          <BoundingBox>
            <Position x="437.13399349420945" y="714.91614380045303"/>
            <Dimensions width="196" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_21" name="MetabGlyph" metabolite="Metabolite_16">
          <BoundingBox>
            <Position x="460.12129439184048" y="339.32266403159957"/>
            <Dimensions width="132" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_22" name="MetabGlyph" metabolite="Metabolite_10">
          <BoundingBox>
            <Position x="118.38064119564865" y="575.66390986801161"/>
            <Dimensions width="228" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_23" name="MetabGlyph" metabolite="Metabolite_12">
          <BoundingBox>
            <Position x="36.206284927067486" y="698.0116086734472"/>
            <Dimensions width="228" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_24" name="MetabGlyph" metabolite="Metabolite_21">
          <BoundingBox>
            <Position x="40.213475854316357" y="742.24343643891143"/>
            <Dimensions width="84" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_25" name="MetabGlyph" metabolite="Metabolite_9">
          <BoundingBox>
            <Position x="293.45056860206915" y="565.48007218981479"/>
            <Dimensions width="84" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_26" name="MetabGlyph" metabolite="Metabolite_11">
          <BoundingBox>
            <Position x="91.428686651607791" y="397.62793280333676"/>
            <Dimensions width="84" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_27" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="380.94131713294593" y="998.35174069231789"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_28" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="51.762496560052398" y="521.17068734576605"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_29" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="336.45664547802892" y="417.93381921343826"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_30" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="516.94676692773839" y="973.3352174266372"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_31" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="313.22965365586072" y="0"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_32" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="256.09502038373574" y="217.27113272116014"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_33" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="655.96419493435747" y="504.37255058928895"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_34" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="221.28428664450053" y="414.57145587087382"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_35" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="558.68277441963278" y="587.42752623869774"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
      </ListOfMetabGlyphs>
      <ListOfReactionGlyphs>
        <ReactionGlyph key="Layout_36" name="ReactionGlyph" reaction="Reaction_5">
          <BoundingBox>
            <Position x="619.84151849522732" y="695.21562282446598"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="627.56461434703795" y="695.41885523285509"/>
                <End x="612.11842264341669" y="695.01239041607687"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_37" name="MetabReferenceGlyph" metaboliteGlyph="Layout_13" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="627.56461434703795" y="695.41885523285509"/>
                    <End x="665.77392848011857" y="713.9807919682346"/>
                    <BasePoint1 x="643.01080605065931" y="695.82532004963321"/>
                    <BasePoint2 x="658.25391519129425" y="705.00467221312852"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_38" name="MetabReferenceGlyph" metaboliteGlyph="Layout_20" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="612.11842264341669" y="695.01239041607687"/>
                    <End x="569.21207788910249" y="709.91614380045303"/>
                    <BasePoint1 x="596.67223093979533" y="694.60592559929876"/>
                    <BasePoint2 x="579.08060648854359" y="702.15941849568139"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_39" name="ReactionGlyph" reaction="Reaction_28">
          <BoundingBox>
            <Position x="414.67986336793439" y="551.0006248240627"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="407.05145360589449" y="553.34337922073678"/>
                <End x="422.30827312997428" y="548.65787042738862"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_40" name="MetabReferenceGlyph" metaboliteGlyph="Layout_25" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="407.05145360589449" y="553.34337922073678"/>
                    <End x="382.45056860206915" y="561.58633932416399"/>
                    <BasePoint1 x="391.79463408181465" y="558.02888801408494"/>
                    <BasePoint2 x="383.30839646092193" y="560.97899086746145"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_41" name="MetabReferenceGlyph" metaboliteGlyph="Layout_14" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="422.30827312997428" y="548.65787042738862"/>
                    <End x="457.01876384286754" y="539.59709729430233"/>
                    <BasePoint1 x="437.56509265405413" y="543.97236163404045"/>
                    <BasePoint2 x="451.10613312948078" y="540.61335226583446"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_42" name="ReactionGlyph" reaction="Reaction_16">
          <BoundingBox>
            <Position x="173.59255002396264" y="792.73259671402479"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="168.00770779133137" y="788.6931006444961"/>
                <End x="179.17739225659392" y="796.77209278355349"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_43" name="MetabReferenceGlyph" metaboliteGlyph="Layout_23" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="168.00770779133137" y="788.6931006444961"/>
                    <End x="152.04299685286625" y="731.0116086734472"/>
                    <BasePoint1 x="156.83802332606885" y="780.61410850543871"/>
                    <BasePoint2 x="151.64808897315191" y="753.79311055467861"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_44" name="MetabReferenceGlyph" metaboliteGlyph="Layout_7" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="179.17739225659392" y="796.77209278355349"/>
                    <End x="174.90312957969275" y="807.45174106406114"/>
                    <BasePoint1 x="190.34707672185644" y="804.85108492261088"/>
                    <BasePoint2 x="185.41752426709024" y="808.1711610281003"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_45" name="ReactionGlyph" reaction="Reaction_17">
          <BoundingBox>
            <Position x="214.92694877285186" y="652.35880360753822"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="215.53726301920523" y="657.36167193616325"/>
                <End x="214.31663452649849" y="647.35593527891319"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_46" name="MetabReferenceGlyph" metaboliteGlyph="Layout_23" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="215.53726301920523" y="657.36167193616325"/>
                    <End x="178.5297966675669" y="693.0116086734472"/>
                    <BasePoint1 x="216.75789151191196" y="667.3674085934133"/>
                    <BasePoint2 x="197.94900121291613" y="682.69094279774276"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_47" name="MetabReferenceGlyph" metaboliteGlyph="Layout_17" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="214.31663452649849" y="647.35593527891319"/>
                    <End x="194.18312165080894" y="630.95424210094711"/>
                    <BasePoint1 x="213.09600603379175" y="637.35019862166314"/>
                    <BasePoint2 x="203.33440671912365" y="631.65078619699261"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_48" name="MetabReferenceGlyph" metaboliteGlyph="Layout_25" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="306.12990324062525" y="598.48007218981479"/>
                    <End x="224.85335786396769" y="651.1478525119885"/>
                    <BasePoint1 x="265.49163055229644" y="624.81396235090165"/>
                    <BasePoint2 x="234.77976695508352" y="649.93690141643879"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_49" name="MetabReferenceGlyph" metaboliteGlyph="Layout_12" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="318.98931337020917" y="696.63770069600514"/>
                    <End x="224.85335786396769" y="651.1478525119885"/>
                    <BasePoint1 x="271.9213356170884" y="673.89277660399682"/>
                    <BasePoint2 x="234.77976695508352" y="649.93690141643879"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_50" name="ReactionGlyph" reaction="Reaction_0">
          <BoundingBox>
            <Position x="391.17263551379347" y="917.76813735081373"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="389.35519308886626" y="926.2345292670276"/>
                <End x="392.99007793872067" y="909.30174543459987"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_51" name="MetabReferenceGlyph" metaboliteGlyph="Layout_27" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="389.35519308886626" y="926.2345292670276"/>
                    <End x="381.86395685648648" y="993.35174069231789"/>
                    <BasePoint1 x="385.72030823901179" y="943.16731309945533"/>
                    <BasePoint2 x="382.88341133528553" y="972.49272285399366"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_52" name="MetabReferenceGlyph" metaboliteGlyph="Layout_18" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="392.99007793872067" y="909.30174543459987"/>
                    <End x="411.39127192503059" y="848.52390236804013"/>
                    <BasePoint1 x="396.62496278857515" y="892.36896160217213"/>
                    <BasePoint2 x="404.91683856926647" y="866.21323602699908"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_53" name="ReactionGlyph">
          <BoundingBox>
            <Position x="600.61095324711562" y="308.72192926555044"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="606.8935211467367" y="305.165821734963"/>
                <End x="594.32838534749453" y="312.27803679613788"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_54" name="MetabReferenceGlyph" metaboliteGlyph="Layout_15" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="606.8935211467367" y="305.165821734963"/>
                    <End x="623.88946459593467" y="250.26491477256963"/>
                    <BasePoint1 x="619.45865694597899" y="298.05360667378807"/>
                    <BasePoint2 x="624.81534472076737" y="272.38120695788513"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_55" name="MetabReferenceGlyph" metaboliteGlyph="Layout_3" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="606.8935211467367" y="305.165821734963"/>
                    <End x="646.89422373154753" y="314.52488388850367"/>
                    <BasePoint1 x="619.45865694597899" y="298.05360667378807"/>
                    <BasePoint2 x="636.3177242885738" y="304.51119151585215"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_56" name="MetabReferenceGlyph" metaboliteGlyph="Layout_21" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="594.32838534749453" y="312.27803679613788"/>
                    <End x="557.27726239499191" y="334.32266403159957"/>
                    <BasePoint1 x="581.76324954825225" y="319.39025185731282"/>
                    <BasePoint2 x="566.37897202181148" y="328.63451170974992"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_57" name="ReactionGlyph" reaction="Reaction_18">
          <BoundingBox>
            <Position x="136.48243958427139" y="535.73544320657811"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="140.76931475626878" y="540.24962094433715"/>
                <End x="132.195564412274" y="531.22126546881907"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_58" name="MetabReferenceGlyph" metaboliteGlyph="Layout_17" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="140.76931475626878" y="540.24962094433715"/>
                    <End x="141.43859409240497" y="592.95424210094711"/>
                    <BasePoint1 x="149.34306510026354" y="549.27797641985524"/>
                    <BasePoint2 x="147.53426718233294" y="573.37319812928069"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_59" name="MetabReferenceGlyph" metaboliteGlyph="Layout_28" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="132.195564412274" y="531.22126546881907"/>
                    <End x="57.762496560052398" y="521.71093751437388"/>
                    <BasePoint1 x="123.62181406827924" y="522.19290999330099"/>
                    <BasePoint2 x="88.548717728167134" y="519.69483488495791"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_60" name="MetabReferenceGlyph" metaboliteGlyph="Layout_4" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="255.56489239935433" y="538.01926554867066"/>
                    <End x="143.73371210281942" y="528.84929429287092"/>
                    <BasePoint1 x="199.64930225108688" y="533.43427992077079"/>
                    <BasePoint2 x="150.98498462136746" y="521.96314537916373"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_61" name="ReactionGlyph" reaction="Reaction_27">
          <BoundingBox>
            <Position x="405.35231569708014" y="501.47095818214905"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="412.98072545912004" y="499.12820378547497"/>
                <End x="397.72390593504025" y="503.81371257882313"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_62" name="MetabReferenceGlyph" metaboliteGlyph="Layout_14" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="412.98072545912004" y="499.12820378547497"/>
                    <End x="458.27085767427491" y="513.62498425633362"/>
                    <BasePoint1 x="428.23754498319988" y="494.44269499212686"/>
                    <BasePoint2 x="447.06840620975731" y="502.86246242589323"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_63" name="MetabReferenceGlyph" metaboliteGlyph="Layout_25" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="397.72390593504025" y="503.81371257882313"/>
                    <End x="348.03584798486975" y="560.48007218981479"/>
                    <BasePoint1 x="382.46708641096041" y="508.49922137217123"/>
                    <BasePoint2 x="361.43726231689516" y="535.66102397933003"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_64" name="ReactionGlyph" reaction="Reaction_8">
          <BoundingBox>
            <Position x="215.51286713984234" y="737.7168928078986"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="221.09770937247362" y="741.7563888774273"/>
                <End x="209.92802490721107" y="733.67739673836991"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_65" name="MetabReferenceGlyph" metaboliteGlyph="Layout_7" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="221.09770937247362" y="741.7563888774273"/>
                    <End x="248.79795279332987" y="773.80153006402065"/>
                    <BasePoint1 x="232.26739383773614" y="749.83538101648469"/>
                    <BasePoint2 x="243.32509443184864" y="763.83820357501691"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_66" name="MetabReferenceGlyph" metaboliteGlyph="Layout_23" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="209.92802490721107" y="733.67739673836991"/>
                    <End x="218.10228188000536" y="731.0116086734472"/>
                    <BasePoint1 x="198.75834044194855" y="725.59840459931252"/>
                    <BasePoint2 x="205.63789004466133" y="726.28525860161562"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_67" name="MetabReferenceGlyph" metaboliteGlyph="Layout_24" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="129.21347585431636" y="752.39906022301352"/>
                    <End x="209.65224318439394" y="745.81955205365398"/>
                    <BasePoint1 x="169.43285951935513" y="749.10930613833375"/>
                    <BasePoint2 x="203.79161922894554" y="753.92221129940935"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_68" name="MetabReferenceGlyph" metaboliteGlyph="Layout_12" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="318.98931337020917" y="711.9209647717978"/>
                    <End x="221.37349109529075" y="729.61423356214323"/>
                    <BasePoint1 x="270.18140223274997" y="720.76759916697051"/>
                    <BasePoint2 x="227.23411505073915" y="721.51157431638785"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_69" name="ReactionGlyph" reaction="Reaction_14">
          <BoundingBox>
            <Position x="346.33967593819364" y="501.28731612903391"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="348.80308632056665" y="510.23710653750652"/>
                <End x="343.87626555582062" y="492.3375257205613"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_70" name="MetabReferenceGlyph" metaboliteGlyph="Layout_6" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="348.80308632056665" y="510.23710653750652"/>
                    <End x="377.31479714417299" y="578.42962738289089"/>
                    <BasePoint1 x="353.72990708531262" y="528.13668735445174"/>
                    <BasePoint2 x="366.75405730592934" y="557.75805257290767"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_71" name="MetabReferenceGlyph" metaboliteGlyph="Layout_29" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="343.87626555582062" y="492.3375257205613"/>
                    <End x="337.15235242080644" y="423.93381921343826"/>
                    <BasePoint1 x="338.94944479107465" y="474.43794490361603"/>
                    <BasePoint2 x="336.81919341475407" y="444.71098685429081"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_72" name="MetabReferenceGlyph" metaboliteGlyph="Layout_4" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="312.57610393802958" y="521.56121411950767"/>
                    <End x="336.6982331608645" y="503.94110232454562"/>
                    <BasePoint1 x="324.63716854944704" y="512.75115822202667"/>
                    <BasePoint2 x="327.05679038353537" y="506.59488852005734"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_73" name="ReactionGlyph" reaction="Reaction_6">
          <BoundingBox>
            <Position x="271.74009031371168" y="683.20954781693695"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="273.2162147329139" y="693.36642882673743"/>
                <End x="270.26396589450945" y="673.05266680713646"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_74" name="MetabReferenceGlyph" metaboliteGlyph="Layout_7" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="273.2162147329139" y="693.36642882673743"/>
                    <End x="265.3287711135801" y="773.80153006402065"/>
                    <BasePoint1 x="276.16846357131828" y="713.68019084633829"/>
                    <BasePoint2 x="271.4866795520503" y="748.81930096007977"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_75" name="MetabReferenceGlyph" metaboliteGlyph="Layout_22" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="270.26396589450945" y="673.05266680713646"/>
                    <End x="242.90288447439104" y="608.66390986801161"/>
                    <BasePoint1 x="267.31171705610507" y="652.7389047875356"/>
                    <BasePoint2 x="254.36923855564694" y="625.62296682287342"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_76" name="MetabReferenceGlyph" metaboliteGlyph="Layout_25" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="325.45485253123695" y="598.48007218981479"/>
                    <End x="281.63612673918288" y="681.77133258069887"/>
                    <BasePoint1 x="303.54548963520995" y="640.12570238525677"/>
                    <BasePoint2 x="291.53216316465409" y="680.33311734446079"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_77" name="MetabReferenceGlyph" metaboliteGlyph="Layout_12" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="318.98931337020917" y="697.85110013302108"/>
                    <End x="281.63612673918288" y="681.77133258069887"/>
                    <BasePoint1 x="300.312720054696" y="689.81121635685997"/>
                    <BasePoint2 x="291.53216316465409" y="680.33311734446079"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_78" name="ReactionGlyph" reaction="Reaction_1">
          <BoundingBox>
            <Position x="470.86910499935868" y="906.23576348401184"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="465.88627493454629" y="899.02019773108202"/>
                <End x="475.85193506417107" y="913.45132923694166"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_79" name="MetabReferenceGlyph" metaboliteGlyph="Layout_18" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="465.88627493454629" y="899.02019773108202"/>
                    <End x="430.94691453673687" y="848.52390236804013"/>
                    <BasePoint1 x="455.92061480492151" y="884.58906622522227"/>
                    <BasePoint2 x="440.94234963842302" y="862.94870142016634"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_80" name="MetabReferenceGlyph" metaboliteGlyph="Layout_30" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="475.85193506417107" y="913.45132923694166"/>
                    <End x="513.66113017620319" y="968.3352174266372"/>
                    <BasePoint1 x="485.81759519379585" y="927.88246074280141"/>
                    <BasePoint2 x="502.23077771740572" y="951.71662196118427"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_81" name="ReactionGlyph" reaction="Reaction_26">
          <BoundingBox>
            <Position x="530.53706676284969" y="35.087356893455308"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="523.03331406797474" y="37.728241140757817"/>
                <End x="538.04081945772464" y="32.446472646152799"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_82" name="MetabReferenceGlyph" metaboliteGlyph="Layout_19" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="523.03331406797474" y="37.728241140757817"/>
                    <End x="492.77032720162799" y="51.025365997835024"/>
                    <BasePoint1 x="508.02580867822496" y="43.010009635362827"/>
                    <BasePoint2 x="496.646191592489" y="48.338129940250184"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_83" name="MetabReferenceGlyph" metaboliteGlyph="Layout_16" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="538.04081945772464" y="32.446472646152799"/>
                    <End x="519.68302786771676" y="33.358810095091698"/>
                    <BasePoint1 x="553.04832484747442" y="27.164704151547788"/>
                    <BasePoint2 x="540.11755270503306" y="28.941314999668492"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_84" name="ReactionGlyph" reaction="Reaction_22">
          <BoundingBox>
            <Position x="507.61741390120329" y="438.74824678649981"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="509.52254042865195" y="429.78313077526309"/>
                <End x="505.71228737375463" y="447.71336279773652"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_85" name="MetabReferenceGlyph" metaboliteGlyph="Layout_21" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="509.52254042865195" y="429.78313077526309"/>
                    <End x="521.9699097542258" y="372.32266403159957"/>
                    <BasePoint1 x="513.33279348354927" y="411.85289875278966"/>
                    <BasePoint2 x="518.60391488261189" y="387.60522338657631"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_86" name="MetabReferenceGlyph" metaboliteGlyph="Layout_14" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="505.71228737375463" y="447.71336279773652"/>
                    <End x="491.9569045900875" y="513.62498425633362"/>
                    <BasePoint1 x="501.90203431885732" y="465.64359482020996"/>
                    <BasePoint2 x="495.97690619074808" y="494.11684754389012"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_87" name="ReactionGlyph" reaction="Reaction_25">
          <BoundingBox>
            <Position x="388.42318433188075" y="24.382803659867648"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="395.56710034759868" y="27.859071959759397"/>
                <End x="381.27926831616281" y="20.906535359975898"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_88" name="MetabReferenceGlyph" metaboliteGlyph="Layout_19" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="395.56710034759868" y="27.859071959759397"/>
                    <End x="431.38181650067997" y="51.025365997835024"/>
                    <BasePoint1 x="409.85493237903449" y="34.811608559542904"/>
                    <BasePoint2 x="424.19033244771617" y="44.656621428634836"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_89" name="MetabReferenceGlyph" metaboliteGlyph="Layout_31" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="381.27926831616281" y="20.906535359975898"/>
                    <End x="319.22965365586072" y="1.8893074833164527"/>
                    <BasePoint1 x="366.991436284727" y="13.953998760192395"/>
                    <BasePoint2 x="339.53858696243492" y="6.1835189718085477"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_90" name="ReactionGlyph">
          <BoundingBox>
            <Position x="219.43433879813745" y="882.30377043411636"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="224.8189062858292" y="880.71860732817925"/>
                <End x="214.04977131044569" y="883.88893354005347"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_91" name="MetabReferenceGlyph" metaboliteGlyph="Layout_7" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="224.8189062858292" y="880.71860732817925"/>
                    <End x="256.00335558431379" y="811.80153006402065"/>
                    <BasePoint1 x="235.58804126121274" y="877.54828111630502"/>
                    <BasePoint2 x="248.48798216660913" y="843.88232403719428"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_92" name="MetabReferenceGlyph" metaboliteGlyph="Layout_11" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="224.8189062858292" y="880.71860732817925"/>
                    <End x="233.38306268062365" y="947.75189994285461"/>
                    <BasePoint1 x="235.58804126121274" y="877.54828111630502"/>
                    <BasePoint2 x="237.17783571476406" y="911.85750897661126"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_93" name="MetabReferenceGlyph" metaboliteGlyph="Layout_5" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="214.04977131044569" y="883.88893354005347"/>
                    <End x="189.15715922006433" y="892.47997712217989"/>
                    <BasePoint1 x="203.28063633506216" y="887.0592597519277"/>
                    <BasePoint2 x="193.52661403371735" y="890.56219999002235"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_94" name="ReactionGlyph" reaction="Reaction_21">
          <BoundingBox>
            <Position x="464.64138784985113" y="296.84715029357147"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="470.09746975542009" y="303.072416664147"/>
                <End x="459.18530594428216" y="290.62188392299595"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_95" name="MetabReferenceGlyph" metaboliteGlyph="Layout_21" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="470.09746975542009" y="303.072416664147"/>
                    <End x="503.44594977206992" y="334.32266403159957"/>
                    <BasePoint1 x="481.00963356655797" y="315.52294940529805"/>
                    <BasePoint2 x="494.95583262209846" y="328.03543990373657"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_96" name="MetabReferenceGlyph" metaboliteGlyph="Layout_10" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="459.18530594428216" y="290.62188392299595"/>
                    <End x="429.0391273645709" y="247.81733662008901"/>
                    <BasePoint1 x="448.27314213314429" y="278.1713511818449"/>
                    <BasePoint2 x="435.92809379607309" y="259.88171071567922"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_97" name="ReactionGlyph" reaction="Reaction_9">
          <BoundingBox>
            <Position x="429.91476805483956" y="719.81502621188201"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="425.79918312314874" y="727.60253651048424"/>
                <End x="434.03035298653037" y="712.02751591327979"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_98" name="MetabReferenceGlyph" metaboliteGlyph="Layout_18" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="425.79918312314874" y="727.60253651048424"/>
                    <End x="417.74128232264854" y="810.52390236804013"/>
                    <BasePoint1 x="417.5680132597671" y="743.1775571076887"/>
                    <BasePoint2 x="415.59685532536241" y="780.74448488716553"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_99" name="MetabReferenceGlyph" metaboliteGlyph="Layout_8" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="434.03035298653037" y="712.02751591327979"/>
                    <End x="451.64398557582001" y="692.77369639599533"/>
                    <BasePoint1 x="442.26152284991201" y="696.45249531607533"/>
                    <BasePoint2 x="449.01054667871142" y="690.71934070673422"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_100" name="MetabReferenceGlyph" metaboliteGlyph="Layout_14" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="481.04979106071988" y="551.62498425633362"/>
                    <End x="421.07350416972173" y="715.14254797076501"/>
                    <BasePoint1 x="451.06164761522081" y="633.38376611354931"/>
                    <BasePoint2 x="412.2322402846039" y="710.470069729648"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_101" name="MetabReferenceGlyph" metaboliteGlyph="Layout_12" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="364.98931337020917" y="709.90147321189761"/>
                    <End x="421.07350416972173" y="715.14254797076501"/>
                    <BasePoint1 x="393.03140876996542" y="712.52201059133131"/>
                    <BasePoint2 x="412.2322402846039" y="710.470069729648"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_102" name="ReactionGlyph" reaction="Reaction_23">
          <BoundingBox>
            <Position x="334.36893098169247" y="227.97031818927456"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="342.38916277652874" y="228.52262838422101"/>
                <End x="326.34869918685621" y="227.41800799432812"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_103" name="MetabReferenceGlyph" metaboliteGlyph="Layout_10" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="342.38916277652874" y="228.52262838422101"/>
                    <End x="377.99965628046152" y="229.35663246906176"/>
                    <BasePoint1 x="358.42962636620132" y="229.62724877411389"/>
                    <BasePoint2 x="372.22475722074955" y="229.76809571906105"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_104" name="MetabReferenceGlyph" metaboliteGlyph="Layout_32" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="326.34869918685621" y="227.41800799432812"/>
                    <End x="262.09502038373574" y="218.6458225283391"/>
                    <BasePoint1 x="310.30823559718363" y="226.31338760443523"/>
                    <BasePoint2 x="282.19151209304152" y="222.20344996891396"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_105" name="ReactionGlyph" reaction="Reaction_4">
          <BoundingBox>
            <Position x="617.13010961059831" y="767.41119735277857"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="609.40701375878768" y="767.20796494438946"/>
                <End x="624.85320546240894" y="767.61442976116768"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_106" name="MetabReferenceGlyph" metaboliteGlyph="Layout_20" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="609.40701375878768" y="767.20796494438946"/>
                    <End x="564.63641477292776" y="747.91614380045303"/>
                    <BasePoint1 x="593.96082205516632" y="766.80150012761135"/>
                    <BasePoint2 x="575.43707048814167" y="757.25720575983769"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_107" name="MetabReferenceGlyph" metaboliteGlyph="Layout_13" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="624.85320546240894" y="767.61442976116768"/>
                    <End x="662.86557345475808" y="751.9807919682346"/>
                    <BasePoint1 x="640.2993971660303" y="768.0208945779458"/>
                    <BasePoint2 x="655.44403323629945" y="760.10245947728481"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_108" name="ReactionGlyph" reaction="Reaction_24">
          <BoundingBox>
            <Position x="445.3372852624438" y="151.41532291574157"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="443.35686937795595" y="159.35492144685426"/>
                <End x="447.31770114693165" y="143.47572438462888"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_109" name="MetabReferenceGlyph" metaboliteGlyph="Layout_10" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="443.35686937795595" y="159.35492144685426"/>
                    <End x="424.94115849408882" y="209.81733662008901"/>
                    <BasePoint1 x="439.39603760898024" y="175.23411850907965"/>
                    <BasePoint2 x="431.1783901092906" y="196.4955268301407"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_110" name="MetabReferenceGlyph" metaboliteGlyph="Layout_19" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="447.31770114693165" y="143.47572438462888"/>
                    <End x="454.84911801348301" y="89.025365997835024"/>
                    <BasePoint1 x="451.27853291590736" y="127.59652732240347"/>
                    <BasePoint2 x="454.05403340693914" y="104.3411473945629"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_111" name="ReactionGlyph" reaction="Reaction_15">
          <BoundingBox>
            <Position x="329.33173045206615" y="851.17581541486106"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="337.12608225465607" y="853.01193403006209"/>
                <End x="321.53737864947624" y="849.33969679966003"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_112" name="MetabReferenceGlyph" metaboliteGlyph="Layout_18" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="337.12608225465607" y="853.01193403006209"/>
                    <End x="372.26660249746249" y="848.52390236804013"/>
                    <BasePoint1 x="352.71478585983584" y="856.68417126046404"/>
                    <BasePoint2 x="366.38787007994415" y="853.52209612185266"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_113" name="MetabReferenceGlyph" metaboliteGlyph="Layout_7" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="321.53737864947624" y="849.33969679966003"/>
                    <End x="277.73308606886337" y="811.80153006402065"/>
                    <BasePoint1 x="305.94867504429646" y="845.66745956925809"/>
                    <BasePoint2 x="287.94370465528493" y="827.81643550903891"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_114" name="ReactionGlyph" reaction="Reaction_13">
          <BoundingBox>
            <Position x="448.74572167986537" y="659.16614147713562"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="456.19117869830143" y="665.74046729801375"/>
                <End x="441.30026466142931" y="652.59181565625749"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_115" name="MetabReferenceGlyph" metaboliteGlyph="Layout_20" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="456.19117869830143" y="665.74046729801375"/>
                    <End x="510.80741965115584" y="709.91614380045303"/>
                    <BasePoint1 x="471.08209273517349" y="678.88911893977001"/>
                    <BasePoint2 x="494.66748470238269" y="697.68979428055059"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_116" name="MetabReferenceGlyph" metaboliteGlyph="Layout_6" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="441.30026466142931" y="652.59181565625749"/>
                    <End x="404.39769725372742" y="616.42962738289089"/>
                    <BasePoint1 x="426.40935062455725" y="639.44316401450124"/>
                    <BasePoint2 x="411.68079542992427" y="624.649232788257"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_117" name="MetabReferenceGlyph" metaboliteGlyph="Layout_14" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="482.80706166137611" y="551.62498425633362"/>
                    <End x="455.36465754741107" y="651.67016335674884"/>
                    <BasePoint1 x="469.08585960439359" y="601.64757380654123"/>
                    <BasePoint2 x="461.98359341495677" y="644.17418523636206"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_118" name="MetabReferenceGlyph" metaboliteGlyph="Layout_12" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="364.98931337020917" y="698.3143944017952"/>
                    <End x="442.12678581231967" y="666.66211959752241"/>
                    <BasePoint1 x="403.55804959126442" y="682.4882569996588"/>
                    <BasePoint2 x="435.50784994477397" y="674.15809771790919"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_119" name="ReactionGlyph" reaction="Reaction_12">
          <BoundingBox>
            <Position x="506.73131547842291" y="813.04612234588899"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="512.59850687155881" y="808.01573441750963"/>
                <End x="500.86412408528696" y="818.07651027426834"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_120" name="MetabReferenceGlyph" metaboliteGlyph="Layout_20" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="512.59850687155881" y="808.01573441750963"/>
                    <End x="532.16144864963587" y="747.91614380045303"/>
                    <BasePoint1 x="524.33288965783072" y="797.95495856075092"/>
                    <BasePoint2 x="531.18076485030133" y="770.4203572164123"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_121" name="MetabReferenceGlyph" metaboliteGlyph="Layout_18" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="500.86412408528696" y="818.07651027426834"/>
                    <End x="488.79016563149059" y="828.14388641046355"/>
                    <BasePoint1 x="489.12974129901505" y="828.13728613102705"/>
                    <BasePoint2 x="486.02635776868487" y="830.65578023493504"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_122" name="ReactionGlyph" reaction="Reaction_11">
          <BoundingBox>
            <Position x="466.78392800378793" y="773.86839792899377"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="460.91673661065198" y="778.89878585737313"/>
                <End x="472.65111939692389" y="768.83801000061442"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_123" name="MetabReferenceGlyph" metaboliteGlyph="Layout_18" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="460.91673661065198" y="778.89878585737313"/>
                    <End x="432.49400565575667" y="810.52390236804013"/>
                    <BasePoint1 x="449.18235382438007" y="788.95956171413184"/>
                    <BasePoint2 x="437.90458404350045" y="802.25692600527566"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_124" name="MetabReferenceGlyph" metaboliteGlyph="Layout_20" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="472.65111939692389" y="768.83801000061442"/>
                    <End x="502.8437681936357" y="747.91614380045303"/>
                    <BasePoint1 x="484.3855021831958" y="758.77723414385571"/>
                    <BasePoint2 x="496.5482308849837" y="750.83149500796469"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_125" name="MetabReferenceGlyph" metaboliteGlyph="Layout_9" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="547.1581845227779" y="842.14584830492413"/>
                    <End x="473.29286113822388" y="781.46009006259897"/>
                    <BasePoint1 x="510.22552283050089" y="811.80296918376155"/>
                    <BasePoint2 x="479.80179427265983" y="789.05178219620416"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_126" name="MetabReferenceGlyph" metaboliteGlyph="Layout_12" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="364.98931337020917" y="719.1319039579522"/>
                    <End x="460.27499486935199" y="766.27670579538858"/>
                    <BasePoint1 x="412.63215411978058" y="742.70430487667045"/>
                    <BasePoint2 x="453.76606173491604" y="758.68501366178339"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_127" name="ReactionGlyph" reaction="Reaction_3">
          <BoundingBox>
            <Position x="575.52936267620692" y="504.8707575579067"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="567.10709112163238" y="506.25837924125892"/>
                <End x="583.95163423078145" y="503.48313587455448"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_128" name="MetabReferenceGlyph" metaboliteGlyph="Layout_14" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="567.10709112163238" y="506.25837924125892"/>
                    <End x="519.01876384286754" y="520.87550242684551"/>
                    <BasePoint1 x="550.26254801248342" y="509.03362260796337"/>
                    <BasePoint2 x="530.42952015038827" y="515.64837335908055"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_129" name="MetabReferenceGlyph" metaboliteGlyph="Layout_33" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="583.95163423078145" y="503.48313587455448"/>
                    <End x="650.96419493435747" y="504.46108238119155"/>
                    <BasePoint1 x="600.79617733993041" y="500.70789250785003"/>
                    <BasePoint2 x="630.09132191443121" y="501.89067660284468"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_130" name="ReactionGlyph" reaction="Reaction_2">
          <BoundingBox>
            <Position x="343.58603284150564" y="793.22938230181398"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="335.79168103891573" y="791.39326368661295"/>
                <End x="351.38038464409556" y="795.06550091701502"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_131" name="MetabReferenceGlyph" metaboliteGlyph="Layout_7" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="335.79168103891573" y="791.39326368661295"/>
                    <End x="348.90312957969275" y="785.21996973154739"/>
                    <BasePoint1 x="320.20297743373595" y="787.72102645621101"/>
                    <BasePoint2 x="330.65587760541939" y="785.55243878627869"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_132" name="MetabReferenceGlyph" metaboliteGlyph="Layout_18" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="351.38038464409556" y="795.06550091701502"/>
                    <End x="386.42541153798618" y="810.52390236804013"/>
                    <BasePoint1 x="366.96908824927533" y="798.73773814741696"/>
                    <BasePoint2 x="380.59442579492571" y="805.54887956532912"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_133" name="ReactionGlyph" reaction="Reaction_7">
          <BoundingBox>
            <Position x="205.35652203281603" y="494.88359298354726"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="205.88633976037343" y="503.61321568340418"/>
                <End x="204.82670430525863" y="486.15397028369034"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_134" name="MetabReferenceGlyph" metaboliteGlyph="Layout_22" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="205.88633976037343" y="503.61321568340418"/>
                    <End x="225.33517616780571" y="570.66390986801161"/>
                    <BasePoint1 x="206.94597521548823" y="521.07246108311801"/>
                    <BasePoint2 x="216.40548455542569" y="550.23299682549327"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_135" name="MetabReferenceGlyph" metaboliteGlyph="Layout_34" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="204.82670430525863" y="486.15397028369034"/>
                    <End x="219.93630721891296" y="420.57145587087382"/>
                    <BasePoint1 x="203.76706885014383" y="468.69472488397656"/>
                    <BasePoint2 x="211.58677917074968" y="440.26827902749676"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_136" name="MetabReferenceGlyph" metaboliteGlyph="Layout_26" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="147.46347419254619" y="430.62793280333676"/>
                    <End x="195.37488886477576" y="495.48939765394721"/>
                    <BasePoint1 x="171.41918152866097" y="463.05866522864198"/>
                    <BasePoint2 x="185.39325569673548" y="496.09520232434716"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_137" name="ReactionGlyph" reaction="Reaction_10">
          <BoundingBox>
            <Position x="470.5817953988643" y="596.29948659053161"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="467.62774989114803" y="600.59179509839646"/>
                <End x="473.53584090658057" y="592.00717808266677"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_138" name="MetabReferenceGlyph" metaboliteGlyph="Layout_8" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="467.62774989114803" y="600.59179509839646"/>
                    <End x="488.81250573407027" y="654.77369639599533"/>
                    <BasePoint1 x="461.71965887571542" y="609.17641211412626"/>
                    <BasePoint2 x="473.78905955103471" y="634.12120850899328"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_139" name="MetabReferenceGlyph" metaboliteGlyph="Layout_35" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="473.53584090658057" y="592.00717808266677"/>
                    <End x="553.68277441963278" y="587.61679551238421"/>
                    <BasePoint1 x="479.44393192201318" y="583.42256106693696"/>
                    <BasePoint2 x="518.04037592468114" y="583.37352403572822"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_140" name="MetabReferenceGlyph" metaboliteGlyph="Layout_4" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="317.56489239935433" y="549.39125514398665"/>
                    <End x="462.34413971808704" y="590.63018073487717"/>
                    <BasePoint1 x="389.95451605872069" y="570.01071793943197"/>
                    <BasePoint2 x="454.10648403730977" y="584.96087487922273"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
      </ListOfReactionGlyphs>
      <ListOfTextGlyphs>
        <TextGlyph key="Layout_141" name="TextGlyph" graphicalObject="Layout_3" originOfText="Metabolite_17">
          <BoundingBox>
            <Position x="651.89422373154753" y="319.13611206713091"/>
            <Dimensions width="48" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_142" name="TextGlyph" graphicalObject="Layout_4" originOfText="Metabolite_2">
          <BoundingBox>
            <Position x="260.56489239935433" y="526.56121411950767"/>
            <Dimensions width="48" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_143" name="TextGlyph" graphicalObject="Layout_5" text="unset">
          <BoundingBox>
            <Position x="81.653367220579469" y="897.47997712217989"/>
            <Dimensions width="112" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_144" name="TextGlyph" graphicalObject="Layout_6" originOfText="Metabolite_6">
          <BoundingBox>
            <Position x="264.22485312548866" y="583.42962738289089"/>
            <Dimensions width="240" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_145" name="TextGlyph" graphicalObject="Layout_7" originOfText="Metabolite_8">
          <BoundingBox>
            <Position x="179.90312957969275" y="778.80153006402065"/>
            <Dimensions width="160" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_146" name="TextGlyph" graphicalObject="Layout_8" originOfText="Metabolite_1">
          <BoundingBox>
            <Position x="402.10186426530697" y="659.77369639599533"/>
            <Dimensions width="192" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_147" name="TextGlyph" graphicalObject="Layout_9" originOfText="Metabolite_3">
          <BoundingBox>
            <Position x="544.28455197628205" y="847.14584830492413"/>
            <Dimensions width="48" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_148" name="TextGlyph" graphicalObject="Layout_10" originOfText="Metabolite_18">
          <BoundingBox>
            <Position x="382.99965628046152" y="214.81733662008901"/>
            <Dimensions width="64" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_149" name="TextGlyph" graphicalObject="Layout_11" originOfText="Metabolite_14">
          <BoundingBox>
            <Position x="190.78630436913687" y="952.75189994285461"/>
            <Dimensions width="80" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_150" name="TextGlyph" graphicalObject="Layout_12" originOfText="Metabolite_7">
          <BoundingBox>
            <Position x="323.98931337020917" y="693.75212028845317"/>
            <Dimensions width="32" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_151" name="TextGlyph" graphicalObject="Layout_13" text="unset">
          <BoundingBox>
            <Position x="575.59591053042277" y="718.9807919682346"/>
            <Dimensions width="224" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_152" name="TextGlyph" graphicalObject="Layout_14" originOfText="Metabolite_5">
          <BoundingBox>
            <Position x="462.01876384286754" y="518.62498425633362"/>
            <Dimensions width="48" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_153" name="TextGlyph" graphicalObject="Layout_15" originOfText="Metabolite_15">
          <BoundingBox>
            <Position x="591.65108103697844" y="217.26491477256963"/>
            <Dimensions width="64" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_154" name="TextGlyph" graphicalObject="Layout_16" originOfText="Metabolite_20">
          <BoundingBox>
            <Position x="524.68302786771676" y="3.2076810517849026"/>
            <Dimensions width="160" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_155" name="TextGlyph" graphicalObject="Layout_17" originOfText="Metabolite_13">
          <BoundingBox>
            <Position x="0" y="597.95424210094711"/>
            <Dimensions width="272" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_156" name="TextGlyph" graphicalObject="Layout_18" originOfText="Metabolite_0">
          <BoundingBox>
            <Position x="351.79016563149059" y="815.52390236804013"/>
            <Dimensions width="128" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_157" name="TextGlyph" graphicalObject="Layout_19" originOfText="Metabolite_19">
          <BoundingBox>
            <Position x="398.60797397021889" y="56.025365997835024"/>
            <Dimensions width="112" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_158" name="TextGlyph" graphicalObject="Layout_20" originOfText="Metabolite_4">
          <BoundingBox>
            <Position x="437.13399349420945" y="714.91614380045303"/>
            <Dimensions width="192" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_159" name="TextGlyph" graphicalObject="Layout_21" originOfText="Metabolite_16">
          <BoundingBox>
            <Position x="460.12129439184048" y="339.32266403159957"/>
            <Dimensions width="128" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_160" name="TextGlyph" graphicalObject="Layout_22" originOfText="Metabolite_10">
          <BoundingBox>
            <Position x="118.38064119564865" y="575.66390986801161"/>
            <Dimensions width="224" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_161" name="TextGlyph" graphicalObject="Layout_23" originOfText="Metabolite_12">
          <BoundingBox>
            <Position x="36.206284927067486" y="698.0116086734472"/>
            <Dimensions width="224" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_162" name="TextGlyph" graphicalObject="Layout_24" originOfText="Metabolite_21">
          <BoundingBox>
            <Position x="40.213475854316357" y="742.24343643891143"/>
            <Dimensions width="80" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_163" name="TextGlyph" graphicalObject="Layout_25" originOfText="Metabolite_9">
          <BoundingBox>
            <Position x="293.45056860206915" y="565.48007218981479"/>
            <Dimensions width="80" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_164" name="TextGlyph" graphicalObject="Layout_26" originOfText="Metabolite_11">
          <BoundingBox>
            <Position x="91.428686651607791" y="397.62793280333676"/>
            <Dimensions width="80" height="24"/>
          </BoundingBox>
        </TextGlyph>
      </ListOfTextGlyphs>
    </Layout>
  </ListOfLayouts>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_1" name="meter" symbol="m">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_0">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        m
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_5" name="second" symbol="s">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_4">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_13" name="Avogadro" symbol="Avogadro">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_12">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_17" name="item" symbol="#">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_16">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        #
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_35" name="liter" symbol="l">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_34">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        0.001*m^3
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_41" name="mole" symbol="mol">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_40">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro*#
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
