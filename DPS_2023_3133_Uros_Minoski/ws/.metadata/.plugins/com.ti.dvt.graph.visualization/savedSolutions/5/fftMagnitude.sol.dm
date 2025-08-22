<?xml version="1.0" encoding="UTF-8"?> 
<java version="1.5.0_14" class="java.beans.XMLDecoder"> 
 <object class="com.ti.dvt.datamodel.core.DataModel"> 
  <void method="addSource"> 
   <object class="com.ti.dvt.datamodel.ccsgraphs.CCSGraphsJtagDataSource"> 
    <void method="connectOutput"> 
     <object class="com.ti.dvt.datamodel.ccsgraphs.FFTCCSGraphDecoder"> 
      <void method="connectOutput"> 
       <object class="com.ti.dvt.datamodel.ccsgraphs.GraphScaleDecoder"> 
        <void method="connectOutput"> 
         <object class="com.ti.dvt.datamodel.core.CircularBuffer"> 
          <void property="name"> 
           <string>CircularBuffer</string> 
          </void> 
          <void property="recordsBlockMode"> 
           <boolean>true</boolean> 
          </void> 
          <void property="recordsPerBlock"> 
           <int>512</int> 
          </void> 
          <void property="size"> 
           <int>512</int> 
          </void> 
         </object> 
        </void> 
        <void property="dspDataType"> 
         <string>16 bit signed integer</string> 
        </void> 
        <void property="graphType"> 
         <string>FFT magnitude</string> 
        </void> 
        <void property="name"> 
         <string>GraphScaleDecoder</string> 
        </void> 
       </object> 
      </void> 
      <void property="blockSize1"> 
       <int>80</int> 
      </void> 
      <void property="blockSize2"> 
       <int>80</int> 
      </void> 
      <void property="dspDataType"> 
       <string>16 bit signed integer</string> 
      </void> 
      <void property="fftFrameSize"> 
       <int>1024</int> 
      </void> 
      <void property="fftOrder"> 
       <int>10</int> 
      </void> 
      <void property="name"> 
       <string>FFTCCSGraphDecoder</string> 
      </void> 
     </object> 
    </void> 
    <void property="blockSize1"> 
     <int>80</int> 
    </void> 
    <void property="blockSize2"> 
     <int>80</int> 
    </void> 
    <void property="dspDataType"> 
     <string>16 bit signed integer</string> 
    </void> 
    <void property="graphType"> 
     <string>FFT magnitude</string> 
    </void> 
    <void property="name"> 
     <string>CCSGraphsJtagDataSource</string> 
    </void> 
    <void property="startAddress1"> 
     <long>4612</long> 
    </void> 
    <void property="startAddress1Expr"> 
     <string>xout</string> 
    </void> 
   </object> 
  </void> 
 </object> 
</java> 
