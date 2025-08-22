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
           <int>2048</int> 
          </void> 
          <void property="size"> 
           <int>2048</int> 
          </void> 
         </object> 
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
       <int>1024</int> 
      </void> 
      <void property="blockSize2"> 
       <int>1024</int> 
      </void> 
      <void property="fftFrameSize"> 
       <int>4096</int> 
      </void> 
      <void property="fftOrder"> 
       <int>12</int> 
      </void> 
      <void property="name"> 
       <string>FFTCCSGraphDecoder</string> 
      </void> 
     </object> 
    </void> 
    <void property="blockSize1"> 
     <int>1024</int> 
    </void> 
    <void property="blockSize2"> 
     <int>1024</int> 
    </void> 
    <void property="graphType"> 
     <string>FFT magnitude</string> 
    </void> 
    <void property="name"> 
     <string>CCSGraphsJtagDataSource</string> 
    </void> 
   </object> 
  </void> 
 </object> 
</java> 
