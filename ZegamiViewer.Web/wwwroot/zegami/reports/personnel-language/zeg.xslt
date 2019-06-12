<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
 <xsl:variable name="key_small" select="/row/value[@colname='medicalReadyStatusName']" />

  
  
  <xsl:variable name='default_label_size'>14px</xsl:variable>
  <xsl:variable name='default_value_size'>20px</xsl:variable>
  <xsl:variable name='default_label_color'>#808285</xsl:variable>
  <xsl:variable name='default_value_color'></xsl:variable>
  
  <xsl:variable name='svc_icon_y'>20</xsl:variable>
  <xsl:variable name='svc_icon_x'>20</xsl:variable>
  <xsl:variable name='default_y'>25</xsl:variable>
  <xsl:variable name='default_text_spacer'>20</xsl:variable>
  <xsl:variable name='default_section_spacer'>22</xsl:variable>
 
  <xsl:variable name='fullname_label_y' select='$default_y'></xsl:variable>
  <xsl:variable name='fullname_label_x'>135</xsl:variable>
  <xsl:variable name='fullname_value_y' select='$default_text_spacer+$default_y'></xsl:variable>
  <xsl:variable name='fullname_value_x'>135</xsl:variable>

  <xsl:variable name='org_label_y' select='$default_section_spacer+$fullname_value_y'></xsl:variable>
  <xsl:variable name='org_label_x'>135</xsl:variable>
  <xsl:variable name='org_value_y' select='$default_text_spacer+$org_label_y'></xsl:variable>
  <xsl:variable name='org_value_x'>135</xsl:variable>
 
  <xsl:variable name='location_label_y' select='$default_section_spacer+$org_value_y'></xsl:variable>
  <xsl:variable name='location_label_x'>135</xsl:variable>
  <xsl:variable name='location_value_y' select='$default_text_spacer+$location_label_y'></xsl:variable>
  <xsl:variable name='location_value_x'>135</xsl:variable>
  
 
  <xsl:variable name='language_grid_y'>160</xsl:variable>
  <xsl:variable name='language_grid_x'>25</xsl:variable>
   
 <xsl:variable name='language_details_height'>210</xsl:variable>
  <xsl:variable name='language_details_width'>25</xsl:variable>
  
  <xsl:variable name='language_label_y'>180</xsl:variable>
  <xsl:variable name='language_label_x' select='$language_details_width'></xsl:variable>
  
  <xsl:variable name='language_dlpt_y' select='$language_details_height'></xsl:variable>
  <xsl:variable name='language_dlpt_x' select='$language_details_width'></xsl:variable>
   
  
  <xsl:variable name='language_listening_label_y' select='$language_details_height'></xsl:variable>
  <xsl:variable name='language_listening_label_x'>70</xsl:variable>
  <xsl:variable name='language_listening_value_y' select='$language_details_height'></xsl:variable>
  <xsl:variable name='language_listening_value_x'>150</xsl:variable>

  <xsl:variable name='language_reading_label_y' select='$language_details_height'></xsl:variable>
  <xsl:variable name='language_reading_label_x'>180</xsl:variable>
  <xsl:variable name='language_reading_value_y' select='$language_details_height'></xsl:variable>
  <xsl:variable name='language_reading_value_x'>255</xsl:variable>

  <xsl:variable name='language_speaking_label_y' select='$language_details_height'></xsl:variable>
  <xsl:variable name='language_speaking_label_x'>290</xsl:variable>
  <xsl:variable name='language_speaking_value_y' select='$language_details_height'></xsl:variable>
  <xsl:variable name='language_speaking_value_x'>375</xsl:variable>
  

  <xsl:variable name='language_dlab_label_y'>235</xsl:variable>
  <xsl:variable name='language_dlab_label_x' select='$language_details_width'></xsl:variable>
  <xsl:variable name='language_dlab_value_y'>235</xsl:variable>
  <xsl:variable name='language_dlab_value_x'>125</xsl:variable>

  <xsl:variable name='occupation_label_y'>270</xsl:variable>
  <xsl:variable name='occupation_label_x' select='$language_details_width'></xsl:variable>
  
  <xsl:variable name='occupation_primary_label_y'>290</xsl:variable>
  <xsl:variable name='occupation_primary_label_x' select='$language_details_width'></xsl:variable>
  <xsl:variable name='occupation_primary_value_y'>310</xsl:variable>
  <xsl:variable name='occupation_primary_value_x' select='$language_details_width'></xsl:variable>
  
  <xsl:variable name='occupation_secondary_label_y'>290</xsl:variable>
  <xsl:variable name='occupation_secondary_label_x'>200</xsl:variable>
  <xsl:variable name='occupation_secondary_value_y'>310</xsl:variable>
  <xsl:variable name='occupation_secondary_value_x'>200</xsl:variable>
  
  <xsl:variable name='occupation_tertiary_label_y'>290</xsl:variable>
  <xsl:variable name='occupation_tertiary_label_x'>400</xsl:variable>
  <xsl:variable name='occupation_tertiary_value_y'>310</xsl:variable>
  <xsl:variable name='occupation_tertiary_value_x'>400</xsl:variable>
    
  
  <xsl:variable name='imr_label_y' select='$default_y'></xsl:variable>
  <xsl:variable name='imr_label_x'>456</xsl:variable>
  <xsl:variable name='imr_icon_y'>50</xsl:variable>
  <xsl:variable name='imr_icon_x'>470</xsl:variable>
  <xsl:variable name='imr_text_y'>54</xsl:variable>
  <xsl:variable name='imr_text_x'>470</xsl:variable>
  <xsl:variable name='imr_icon_radius'>18</xsl:variable>
    
      
  <xsl:variable name="border_color">
    <xsl:choose>
      <xsl:when test="/row/value[@colname='medicalReadyStatusName'] = 'FMR'">green</xsl:when>
      <xsl:when test="/row/value[@colname='medicalReadyStatusName'] = 'PMR'">#E7AE0F</xsl:when>
      <xsl:when test="/row/value[@colname='medicalReadyStatusName'] = 'NMR'">#E91313</xsl:when>
      <xsl:otherwise>#818181</xsl:otherwise>
    </xsl:choose>
  </xsl:variable>
    <xsl:variable name="medicalReadyStatusName" select="/row/value[@colname='medicalReadyStatusName']"/>
  <xsl:variable name="firstName" select="/row/value[@colname='firstName']"/>
  <xsl:variable name="lastName" select="/row/value[@colname='lastName']"/>
  <xsl:variable name="middleName" select="/row/value[@colname='middleName']"/>
  <xsl:variable name="languageDesc" select="/row/value[@colname='languageDesc']"/>
  <xsl:variable name="languageCode" select="/row/value[@colname='languageCode']"/>
  <xsl:variable name="gender" select="/row/value[@colname='gender']"/>
  <xsl:variable name="languageListeningCode" select="/row/value[@colname='languageListeningCode']"/>
  <xsl:variable name="languageReadingCode" select="/row/value[@colname='languageReadingCode']"/>
  <xsl:variable name="languageSpeakingCode" select="/row/value[@colname='languageSpeakingCode']"/>
  <xsl:variable name="serviceName" select="/row/value[@colname='serviceName']"/>
  <xsl:variable name="serviceCode" select="translate(/row/value[@colname='serviceCode'],'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz')"/>
  <xsl:variable name="defenseLanguageAptitudeBatteryScore" select="/row/value[@colname='defenseLanguageAptitudeBatteryScore']"/>
  <xsl:variable name="orgName" select="/row/value[@colname='orgName']"/>
  <xsl:variable name="unitUic" select="/row/value[@colname='unitUic']"/>
  <xsl:variable name="dutyMOS" select="/row/value[@colname='dutyMOS']"/>
  <xsl:variable name="secondaryMOS" select="/row/value[@colname='secondaryMOS']" />
  <xsl:variable name="tertiaryMOS" select="/row/value[@colname='tertiaryMOS']" />
  <xsl:variable name="serviceIconUrl" select="/row/value[@colname='serviceIconUrl']" />
  <xsl:variable name="locationDescription" select="/row/value[@colname='locationDescription']" />
         
 
  
  <xsl:template match="/">
    <xsl:if test="/row/@size='small'">
      <svg data-name="Layer 1" width="250" height="200"  xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
        <title>personnel-language-card-sm</title>
        <path d="M0,0V200H250V0Z" fill="{$border_color}" />
        <!--<image transform="translate(-.5 37.75) scale(.62)" width="350" height="175" xlink:href="AircraftReadiness/{/row/value[@colname='logo']}.png"/>-->
      </svg>
    </xsl:if>
    <xsl:if test="/row/@size='medium'">
      <svg data-name="Layer 1" width="250" height="200"  xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
        <rect y="0" x="0" width="250" height="200" fill="{$border_color}" fill-opacity="1"></rect>
        <title>personnel-language-sm</title>
        <path d="M0,0V200H250V0Z" fill='{$border_color}' />
        <!--<image transform="translate(-.5 37.75) scale(.62)" width="350" height="175" xlink:href="AircraftReadiness/{/row/value[@colname='logo']}.png"/>-->
      </svg>
    </xsl:if>
    <xsl:if test="/row/@size='large'">

      <svg data-name="Layer 1" width="500" height="500" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
        
                <rect y="0" x="0" width="500" height="500" fill="#ffffff" fill-opacity="1"></rect>
        <title>personnel-language-lg</title>

   <rect y="0" x="0" width="498" height="140" fill="{$border_color}" fill-opacity="1"></rect>
    <rect y="10" x="130" width="490" height="120" fill="#ffffff" fill-opacity="1"></rect>
    <image x="{$svc_icon_x}" y="{$svc_icon_y}" xlink:href="/images/service-seals/{$serviceCode}/seal.png" height="100" width="100"/>
        <text x="{$fullname_label_x}" y="{$fullname_label_y}"   fill="{$default_label_color}" font-family="Arial-BoldMT, Arial" font-size="{$default_label_size}" font-weight="700" style="isolation:isolate">Full Name</text>
        <text x="{$fullname_value_x}" y="{$fullname_value_y}"   font-family="ArialMT, Arial" font-size="{$default_value_size}" fill="{$default_value_color}" style="isolation:isolate">
          <xsl:value-of select='$lastName'></xsl:value-of>,&#160;
          <xsl:value-of select='$firstName'></xsl:value-of>&#160;
          <xsl:value-of select='$middleName'></xsl:value-of>
        </text>

        <text x="{$org_label_x}" y="{$org_label_y}" fill="{$default_label_color}" font-family="Arial-BoldMT, Arial" font-size="{$default_label_size}" font-weight="700" style="isolation:isolate">UNIT</text>
        <text x="{$org_value_x}" y="{$org_value_y}"    font-family="ArialMT, Arial" font-size="{$default_value_size}" fill="{$default_value_color}" style="isolation:isolate">
          (<xsl:value-of select='$unitUic'></xsl:value-of>) <xsl:value-of select='$orgName'></xsl:value-of>
        </text>
        <text x="{$location_label_x}" y="{$location_label_y}" fill="{$default_label_color}" font-family="Arial-BoldMT, Arial" font-size="{$default_label_size}" font-weight="700" style="isolation:isolate">Location</text>
        <text x="{$location_value_x}" y="{$location_value_y}"   font-family="ArialMT, Arial" font-size="{$default_value_size}" fill="{$default_value_color}" style="isolation:isolate">
        <xsl:value-of select='$locationDescription'></xsl:value-of>
        </text>
        <text  x="{$imr_label_x}" y="{$imr_label_y}"  fill="{$default_label_color}" font-family="Arial-BoldMT, Arial" font-size="{$default_label_size}" font-weight="700" style="isolation:isolate">IMR</text>
        <xsl:choose>  
          <xsl:when test="$medicalReadyStatusName = 'FMR'">
            <circle cx="{$imr_icon_x}" cy="{$imr_icon_y}" r="{$imr_icon_radius}" stroke="black" stroke-width="0" fill="green">
          </circle>
          </xsl:when>
          <xsl:when test="$medicalReadyStatusName = 'PMR'">
            <circle cx="{$imr_icon_x}" cy="{$imr_icon_y}" r="{$imr_icon_radius}" stroke="black" stroke-width="0" fill="#E7AE0F"></circle>            
          </xsl:when>
          <xsl:when test="$medicalReadyStatusName = 'NMR'">
            <circle cx="{$imr_icon_x}" cy="{$imr_icon_y}" r="{$imr_icon_radius}" stroke="black" stroke-width="0" fill="#E91313"></circle>            
          </xsl:when>
          <xsl:otherwise>
            <circle cx="{$imr_icon_x}" cy="{$imr_icon_y}" r="{$imr_icon_radius}" stroke="black" stroke-width="0" fill="#818181">N/A</circle>            
          </xsl:otherwise>
        </xsl:choose>
        <text x="{$imr_text_x}" y="{$imr_text_y}" text-anchor="middle" font-family="Arial-BoldMT, Arial" font-size="12px" font-weight="600" style="isolation:isolate">
          <xsl:value-of select='$medicalReadyStatusName'></xsl:value-of>        
        </text>
        <text x="{$language_grid_x}" y="{$language_grid_y}" fill="{$default_label_color}" font-family="Arial-BoldMT, Arial" font-size="{$default_label_size}" font-weight="700" style="isolation:isolate">Language</text>
        <text x="{$language_label_x}" y="{$language_label_y}" font-family="ArialMT, Arial" font-size="{$default_label_size}" style="isolation:isolate">
          (<xsl:value-of select='$languageCode'></xsl:value-of>) <xsl:value-of select='$languageDesc'></xsl:value-of>
        </text>
        <text x="{$language_dlpt_x}" y="{$language_dlpt_y}" fill="{$default_label_color}" font-family="Arial-BoldMT, Arial" font-size="{$default_label_size}" font-weight="700" style="isolation:isolate">DLPT</text>
        
        <text x="{$language_listening_label_x}" y="{$language_listening_label_y}" fill="{$default_label_color}" font-family="Arial-BoldMT, Arial" font-size="{$default_label_size}" font-weight="700" style="isolation:isolate">
          Listening:&#160;
        </text>
        <text x="{$language_listening_value_x}" y="{$language_listening_value_y}" text-anchor="middle" font-family="Arial-BoldMT, Arial" font-size="{$default_label_size}" font-weight="800" style="isolation:isolate">
            <xsl:value-of select='$languageListeningCode'></xsl:value-of>
        </text>
        <text x="{$language_reading_label_x}" y="{$language_reading_label_y}" fill="{$default_label_color}" font-family="Arial-BoldMT, Arial" font-size="{$default_label_size}" font-weight="700" style="isolation:isolate">
          Reading:&#160;
        </text>
        <text x="{$language_reading_value_x}" y="{$language_reading_value_y}" text-anchor="middle" font-family="Arial-BoldMT, Arial" font-size="{$default_label_size}" font-weight="800" style="isolation:isolate">
            <xsl:value-of select='$languageReadingCode'></xsl:value-of>
        </text>
        <text x="{$language_speaking_label_x}" y="{$language_speaking_label_y}" fill="{$default_label_color}" font-family="Arial-BoldMT, Arial" font-size="{$default_label_size}" font-weight="700" style="isolation:isolate">
          Speaking:&#160;
        </text>
        <text x="{$language_speaking_value_x}" y="{$language_speaking_value_y}" text-anchor="middle" font-family="Arial-BoldMT, Arial" font-size="{$default_label_size}" font-weight="800" style="isolation:isolate">
            <xsl:value-of select='$languageSpeakingCode'></xsl:value-of>
        </text>
        
        <text x="{$language_dlab_label_x}" y="{$language_dlab_label_y}" fill="{$default_label_color}" font-family="Arial-BoldMT, Arial" font-size="{$default_label_size}" font-weight="700" style="isolation:isolate">
          DLAB:&#160;
        </text>
        <text x="{$language_dlab_value_x}" y="{$language_dlab_value_y}" text-anchor="middle" font-family="Arial-BoldMT, Arial" font-size="{$default_label_size}" font-weight="800" style="isolation:isolate">
            <xsl:value-of select='defenseLanguageAptitudeBatteryScore'></xsl:value-of>
        </text>
        <line x1="0" x2="498" y1="250" y2="250" fill="none" stroke="{$border_color}" stroke-miterlimit="10" stroke-width="3px"/>
        <text x="{$occupation_label_x}" y="{$occupation_label_y}" fill="{$default_label_color}" font-family="Arial-BoldMT, Arial" font-size="{$default_label_size}" font-weight="700" style="isolation:isolate">Occupations:</text>
        
        <text x="{$occupation_primary_label_x}" y="{$occupation_primary_label_y}" fill="{$default_label_color}" font-family="Arial-BoldMT, Arial" font-size="{$default_label_size}" font-weight="700" style="isolation:isolate">Primary</text>
        <text x="{$occupation_primary_value_x}" y="{$occupation_primary_value_y}" font-family="ArialMT, Arial" font-size="{$default_value_size}" fill="{$default_value_color}" style="isolation:isolate">
          <xsl:value-of select='$dutyMOS'></xsl:value-of>
        </text>
        
        
        <text x="{$occupation_secondary_label_x}" y="{$occupation_secondary_label_y}" fill="{$default_label_color}" font-family="Arial-BoldMT, Arial" font-size="{$default_label_size}" font-weight="700" style="isolation:isolate">Secondary</text>
        <text x="{$occupation_secondary_value_x}" y="{$occupation_secondary_value_y}" font-family="ArialMT, Arial" font-size="{$default_value_size}" fill="{$default_value_color}" style="isolation:isolate">
          <xsl:value-of select='$secondaryMOS'></xsl:value-of>
        </text>
        
        <text x="{$occupation_tertiary_label_x}" y="{$occupation_tertiary_label_y}" fill="{$default_label_color}" font-family="Arial-BoldMT, Arial" font-size="{$default_label_size}"  font-weight="700" style="isolation:isolate">Tertiary</text>
        <text x="{$occupation_tertiary_value_x}" y="{$occupation_tertiary_value_y}" font-family="ArialMT, Arial" font-size="{$default_value_size}" fill="{$default_value_color}" style="isolation:isolate">
          <xsl:value-of select='$tertiaryMOS'></xsl:value-of>
        </text>

        
        <line x1="0" x2="498" y1="350" y2="350" fill="none" stroke="{$border_color}" stroke-miterlimit="10" stroke-width="3px"/>

        
        

      <path d="M-.5,0V400h500V0Zm492,393.63H7.46V6.37H491.54Z" fill="{$border_color}"/>
      </svg>
    </xsl:if>


  </xsl:template>
</xsl:stylesheet>