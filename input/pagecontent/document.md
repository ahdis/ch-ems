The CH ELM exchange format defines a FHIR document representing a coherent set of information specific to the transmission of laboratory data. This FHIR document is based on the [CH Lab report document](StructureDefinition-ch-elm-document.html) which is part of the [CH LAB-Report Project](index.html).

The exchange format expects a separate FHIR document per patient, organism and test performed.

The FHIR document consists of a bundle-resource of type "document" (the terms "FHIR document" and "Bundle" are synonymous in the context of the CH ELM project).

The bundle resource contains a consistent set of entries representing FHIR resources specific for the transmission of laboratory data:

<style>
    table {
        width: 100%;
        border-collapse: collapse;
        margin: 20px 0;
    }

    table, th, td {
        border: 1px solid black;
        padding: 10px; 
    }

    th, td {
        padding: 15px;
        text-align: left;
        vertical-align: top;
    }


    th {
        font-weight: bold;
        width: 25%; 
    }

    td {
        width: 25%; 
    }
</style>
<table>
    <tr>
    <td colspan="2">{</td>
  </tr>
  <tr>
    <td colspan="2">"resourceType": "Bundle",</td>
  </tr>
   <tr>
    <td colspan="2">"id": "document_id_nnnn",</td>
  </tr>
<tr>
    <td colspan="2">"entry": [</td>
  </tr>
  <tr>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;{<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"resourceType": "<a href="StructureDefinition-ch-elm-composition.html">Composition</a>"<br>&nbsp;&nbsp;&nbsp;&nbsp;},</td>
    <td>parameters like date, language, title, author, and referring to the different resources</td>
  </tr>
  <tr>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;{<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"resourceType": "<a href="StructureDefinition-ch-elm-diagnosticreport.html">DiagnosticReport</a>"<br>&nbsp;&nbsp;&nbsp;&nbsp;},</td>
    <td>represents the laboratory report as a result of a lab order, with references to all other resources</td>
 </tr>
  <tr>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;{<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"resourceType": "<a href="StructureDefinition-ch-elm-patient.html">Patient</a>"<br>&nbsp;&nbsp;&nbsp;&nbsp;},</td>
    <td>the person from whom the specimen was taken</td>
 </tr>
  <tr>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;{<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"resourceType": "<a href="StructureDefinition-ch-elm-observation-results-laboratory.html">Observation</a>"<br>&nbsp;&nbsp;&nbsp;&nbsp;},</td>
    <td>defines the analyzed organism with the laboratory test result-values, interpretation, and test execution date</td>
 </tr>
  <tr>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;{<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"resourceType": "<a href="StructureDefinition-ch-elm-specimen.html">Specimen</a>"<br>&nbsp;&nbsp;&nbsp;&nbsp;},</td>
    <td>the specimen material with collection date</td>
 </tr>
  <tr>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;{<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"resourceType": "<a href="StructureDefinition-ch-elm-servicerequest-laboratory-order.html">ServiceRequest</a>"<br>&nbsp;&nbsp;&nbsp;&nbsp;},</td>
    <td>the lab order with the laboratory order ID, the requester, and performer of the laboratory test</td>
 </tr>
  <tr>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;{<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"resourceType": "<a href='StructureDefinition-ch-elm-practitionerrole-orderer.html'>PractitionerRole</a>"<br>&nbsp;&nbsp;&nbsp;&nbsp;},</td>
    <td>the orderer of the laboratory test containing a practitioner and/or organization</td>
</tr>
<tr>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;{<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"resourceType": "<a href='StructureDefinition-ch-elm-practitioner-orderer.html'>Practitioner</a>"<br>&nbsp;&nbsp;&nbsp;&nbsp;},</td>
    <td>the person ordering the laboratory test</td>
</tr>
<tr>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;{<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"resourceType": "<a href='StructureDefinition-ch-elm-organization-orderer.html'>Organization</a>"<br>&nbsp;&nbsp;&nbsp;&nbsp;},</td>
    <td>the organization ordering the laboratory test</td>
</tr>
<tr>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;{<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"resourceType": "<a href='StructureDefinition-ch-elm-organization-lab.html'>Organization</a>"<br>&nbsp;&nbsp;&nbsp;&nbsp;}</td>
    <td>the performing laboratory</td>
</tr>
  <tr>
    <td colspan="6">]</td>
  </tr>
   <tr>
    <td colspan="7">}</td>
  </tr>
</table>

The FHIR document is generic and applicable for all types of organisms and reporting scenarios (use cases). For each resource within the FHIR document, a resource profile is defined to meet specific data needs depending on the context and use case.

### Resource profiles

Resource profiles are a way to customize and constrain FHIR resources to meet specific requirements depending on a particular context. These rules might restrict the allowable values for certain elements, specify additional mandatory elements, or define extensions to capture additional data beyond the standard FHIR resources. In the CH ELM Implementation Guide multiple profiles can exist based on the same FHIR resource.

Example: the FHIR resource «organization» is used to map the sender of the FHIR Document, the performing laboratory and the orderer of the laboratory test – each of which having its own profile.

The diagram [“Resource Overview”](profiles.html#overview) illustrates the connections between the individual resource-profiles of a FHIR document.

See the examples in chapter 2.1 to learn how to use the resource profiles for different use cases and data requirements.

### Example FHIR documents

#### Default scenario

examples of basic FHIR documents (no additional codes for organism or specimen)
<table>
    <thead>
        <tr>
            <th>Disease</th>
            <th>observation.code display</th>
            <th>LOINC observation.code (leading code)</th>
            <th>FHIR Document</th>
        </tr>
    </thead>
    <tbody>
           <tr>
            <td>Campylobacteriosis</td>
            <td>Campylobacter coli DNA [Presence] in Stool by NAA with probe detection</td>
            <td>101552-8</td>
            <td>
                <a href="Bundle-4Doc-Campylobacter.json.html">JSON</a>, 
                <a href="Bundle-4Doc-Campylobacter.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Cholera</td>
            <td>Vibrio cholerae toxin ctx gene [Presence] in Specimen by NAA with probe detection</td>
            <td>53942-9</td>
             <td>
                <a href="Bundle-20Doc-Vibrio-cholerae.json.html">JSON</a>, 
                <a href="Bundle-20Doc-Vibrio-cholerae.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Covid-19</td>
            <td>SARS-CoV-2 (COVID-19) RNA [Presence] in Respiratory system specimen by NAA with probe detection</td>
            <td>94500-6</td>
            <td>
                <a href="Bundle-7Doc-SARSCoV2.json.html">JSON</a>, 
                <a href="Bundle-7Doc-SARSCoV2.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Dengue - reporting of high-level titer result</td>
            <td>Dengue virus IgG Ab [Titer] in Serum</td>
            <td>6811-4</td>
            <td>
                <a href="Bundle-16Doc-Dengue-Titer.json.html">JSON</a>, 
                <a href="Bundle-16Doc-Dengue-Titer.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Diphtheria</td>
            <td>Corynebacterium diphtheriae DNA [Presence] in Specimen by NAA with probe detection</td>
            <td>67561-1</td>
             <td>
                <a href="Bundle-18Doc-C-diphtheriae.json.html">JSON</a>, 
                <a href="Bundle-18Doc-C-diphtheriae.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Gonorrhoea</td>
            <td>Neisseria gonorrhoeae [Presence] in Urethra by Organism specific culture</td>
            <td>697-3</td>
           <td>
                <a href="Bundle-1Doc-NeisseriaGonorrhoeae.json.html">JSON</a>, 
                <a href="Bundle-1Doc-NeisseriaGonorrhoeae.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Haemophilus influenzae disease</td>
            <td>Haemophilus influenzae B DNA [Presence] in Blood by NAA with probe detection</td>
            <td>53607-8</td>
           <td>
                <a href="Bundle-22Doc-H-influenzae.json.html">JSON</a>, 
                <a href="Bundle-22Doc-H-influenzae.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Hepatitis B</td>
            <td>Hepatitis B virus core IgM Ab [Presence] in Serum</td>
            <td>31204-1</td>
            <td>
                <a href="Bundle-8Doc-HepatiteB.json.html">JSON</a>, 
                <a href="Bundle-8Doc-HepatiteB.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Hepatitis C</td>
            <td>Hepatitis C virus Ab [Presence] in Serum by Immunoblot</td>
            <td>5199-5</td>
            <td>
                <a href="Bundle-9Doc-HepatiteC.json.html">JSON</a>, 
                <a href="Bundle-9Doc-HepatiteC.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Hepatitis E</td>
            <td>Hepatitis E virus RNA [Presence] in Stool by NAA with probe detection</td>
            <td>91071-1</td>
           <td>
                <a href="Bundle-21Doc-HepatiteE.json.html">JSON</a>, 
                <a href="Bundle-21Doc-HepatiteE.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Influenza</td>
            <td>Influenza virus A RNA [Presence] in Nasopharynx by NAA with probe detection</td>
            <td>76078-5</td>
              <td>
                <a href="Bundle-6Doc-Influenza.json.html">JSON</a>, 
                <a href="Bundle-6Doc-Influenza.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Malaria</td>
            <td>Plasmodium knowlesi DNA [Presence] in Blood by NAA with probe detection</td>
            <td>70568-1</td>
             <td>
                <a href="Bundle-11Doc-Malaria.json.html">JSON</a>, 
                <a href="Bundle-11Doc-Malaria.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Measles - reporting of a seroconversion</td>
            <td>Measles virus IgG and IgM [Interpretation] in Serum</td>
            <td>44012-3</td>
              <td>
                <a href="Bundle-15Doc-Measles-Seroconversion.json.html">JSON</a>, 
                <a href="Bundle-15Doc-Measles-Seroconversion.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Pneumococcal disease</td>
            <td>Streptococcus pneumoniae Ag [Presence] in Cerebral spinal fluid</td>
            <td>20489-1</td>
            <td>
                <a href="Bundle-19Doc-S-pneumoniae.json.html">JSON</a>, 
                <a href="Bundle-19Doc-S-pneumoniae.json.html">XML</a>
            </td>
        </tr>
    </tbody>
</table>

Example of a Snomed code instead of a LOINC code in observation.code
<table>
    <thead>
      <tr>
            <th>Disease</th>
            <th>observation.code display</th>
            <th>LOINC observation.code (leading code)</th>
            <th>FHIR Document</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Syphilis</td>
            <td>Treponema pallidum (organism)</td>
            <td>72904005</td>
            <td>
                <a href="Bundle-5Doc-TreponemaPallidum.json.html">JSON</a>, 
                <a href="Bundle-5Doc-TreponemaPallidum.xml.html">XML</a>
            </td>
        </tr>
    </tbody>
</table>

Example of an organism specification
<table>
    <thead>
          <tr>
            <th>Disease</th>
            <th>observation.code display</th>
            <th>LOINC observation.code (leading code)</th>
            <th>FHIR Document</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Carbapenemase-producing enterobacteriaceae (CPE)</td>
            <td>Carbapenem resistance bla OXA-48-like gene [Presence] by Molecular method</td>
            <td>85827-4</td>
              <td>
                <a href="Bundle-3Doc-CPE.json.html">JSON</a>, 
                <a href="Bundle-3Doc-CPE.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Legionellosis</td>
            <td>Legionella sp Ag [Presence] in Urine</td>
            <td>32781-7</td>
            <td>
                <a href="Bundle-10Doc-Legionella.json.html#root">JSON</a>, 
                <a href="Bundle-10Doc-Legionella.xml.html#root">XML</a>
            </td>
        </tr>
        <tr>
            <td>Shigellosis</td>
            <td>Shigella sp DNA [Presence] in Stool by NAA with probe detection</td>
            <td>101427-3</td>
             <td>
                <a href="Bundle-13Doc-Shigella.json.html">JSON</a>, 
                <a href="Bundle-13Doc-Shigella.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Tularaemia - with optional organism specification</td>
            <td>Francisella tularensis Ag [Presence] in Serum</td>
            <td>31828-7</td>
          <td>
                <a href="Bundle-23Doc-F-tularensis.json.html">JSON</a>, 
                <a href="Bundle-23Doc-F-tularensis.xml.html">XML</a>
            </td>
        </tr>
    </tbody>
</table>

Example of a specimen specification
<table>
    <thead>
          <tr>
            <th>Disease</th>
            <th>observation.code display</th>
            <th>LOINC observation.code (leading code)</th>
            <th>FHIR Document</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Chlamydiosis</td>
            <td>Chlamydia trachomatis [Presence] in Specimen by Organism specific culture</td>
            <td>6349-5</td>
            <td>
                <a href="Bundle-2Doc-ChlamydiaTrachomatis.json.html">JSON</a>, 
                <a href="Bundle-2Doc-ChlamydiaTrachomatis.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Monkeypox</td>
            <td>Monkeypox virus DNA [Presence] in Specimen by NAA with probe detection</td>
            <td>100383-9</td>
             <td>
                <a href="Bundle-12Doc-Monkeypox.json.html">JSON</a>, 
                <a href="Bundle-12Doc-Monkeypox.xml.html">XML</a>
            </td>
        </tr>
    </tbody>
</table>

Example of a VCT Patient with specimen specification
<table>
    <thead>
          <tr>
            <th>Disease</th>
            <th>observation.code display</th>
            <th>LOINC observation.code (leading code)</th>
            <th>FHIR Document</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Chlamydiosis</td>
            <td>Chlamydia trachomatis [Presence] in Specimen by Organism specific culture</td>
            <td>6349-5</td>
           <td>
                <a href="Bundle-2Doc-ChlamydiaTrachomatis-Vct.json.html">JSON</a>, 
                <a href="Bundle-2Doc-ChlamydiaTrachomatis-Vct.xml.html">XML</a>
            </td>
        </tr>
    </tbody>
</table>

#### Broker scenario
<table>
    <thead>
           <tr>
            <th>Disease</th>
            <th>observation.code display</th>
            <th>LOINC observation.code (leading code)</th>
            <th>FHIR Document</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Gonorrhoea</td>
            <td>Neisseria gonorrhoeae [Presence] in Urethra by Organism specific culture</td>
            <td>697-3</td>
             <td>
                <a href="Bundle-1bDoc-NeisseriaGonorrhoeae.json.html">JSON</a>, 
                <a href="Bundle-1bDoc-NeisseriaGonorrhoeae.xml.html">XML</a>
            </td>
        </tr>
    </tbody>
</table>

#### Scenario for confirmation tests
<table>
    <thead>
           <tr>
            <th>Disease</th>
            <th>observation.code display</th>
            <th>LOINC observation.code (leading code)</th>
            <th>FHIR Document</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Meningococcal disease - initial observation by primary laboratory</td>
            <td>Microscopic observation [Identifier] in Cerebral spinal fluid by Gram stain</td>
            <td>14357-8</td>
            <td>
                <a href="Bundle-17Doc-Neisseria.json.html">JSON</a>, 
                <a href="Bundle-17Doc-Neisseria.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Meningococcal disease - confirmation test by reference laboratory</td>
            <td>Neisseria meningitidis [Presence] in Cerebral spinal fluid by Organism specific culture</td>
            <td>86581-6</td>
            <td>
                <a href="Bundle-14Doc-Neisseriameningitidis-confirmationtest.json.html">JSON</a>, 
                <a href="Bundle-14Doc-Neisseriameningitidis-confirmationtest.xml.html">XML</a>
            </td>
        </tr>
    </tbody>
</table>