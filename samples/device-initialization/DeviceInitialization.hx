package;

import turbulenz.TurbulenzEngine;

class DeviceInitialization {
    static function main() {
    var document = js.Browser.document;
    TurbulenzEngine.onload = function () {
        var systemInfo = TurbulenzEngine.getSystemInfo();
        var gd = TurbulenzEngine.createGraphicsDevice({});
        var pd = TurbulenzEngine.createPhysicsDevice({});
        var dw = pd.createDynamicsWorld({});
        var sd = TurbulenzEngine.createSoundDevice({});
        var id = TurbulenzEngine.createInputDevice({});

        document.getElementById("pl_details").innerHTML =
            '<h3>Turbulenz Engine Details</h3>
             <ul><li>Version: ${TurbulenzEngine.version}</li></ul>';

        document.getElementById("sys_details").innerHTML =
            '<h3>System Details</h3>
             <ul><li>CpuDescription: ${systemInfo.cpuDescription}</li>
                 <li>CpuVendor: ${systemInfo.cpuVendor}</li>
                 <li>NumPhysicalCores: ${systemInfo.numPhysicalCores}</li>
                 <li>NumLogicalCores: ${systemInfo.numLogicalCores}</li>
                 <li>RamInMegabytes: ${systemInfo.ramInMegabytes}</li>
                 <li>FrequencyInMegaHz: ${systemInfo.frequencyInMegaHZ}</li>
                 <li>EngineArchitecture: ${systemInfo.architecture}</li>
                 <li>OSName: ${systemInfo.osName}</li>
                 <li>OSVersionMajor: ${systemInfo.osVersionMajor}</li>
                 <li>OSVersionMinor: ${systemInfo.osVersionMinor}</li>
                 <li>OSVersionBuild: ${systemInfo.osVersionBuild}</li>
                 <li>UserLocale: ${systemInfo.userLocale}</li></ul>';

        document.getElementById("gd_details").innerHTML =
            "<h3>Graphics Device Details</h3>" +
                if (gd != null)
                    '<ul><li>Vendor: ${gd.vendor}</li>
                         <li>Renderer: ${gd.renderer}</li>
                         <li>Renderer Version: ${gd.rendererVersion}</li>
                         <li>Shading Language Version: ${gd.shadingLanguageVersion}</li>
                         <li>Video Ram: ${gd.videoRam} MB</li>
                         <li>OCCLUSION_QUERIES: ${gd.isSupported("OCCLUSION_QUERIES")}</li>
                         <li>NPOT_MIPMAPPED_TEXTURES: ${gd.isSupported("NPOT_MIPMAPPED_TEXTURES")}</li>
                         <li>TEXTURE_DXT1: ${gd.isSupported("TEXTURE_DXT1")}</li>
                         <li>TEXTURE_DXT3: ${gd.isSupported("TEXTURE_DXT3")}</li>
                         <li>TEXTURE_DXT5: ${gd.isSupported("TEXTURE_DXT5")}</li>
                         <li>TEXTURE_ETC1: ${gd.isSupported("TEXTURE_ETC1")}</li>
                         <li>INDEXFORMAT_UINT: ${gd.isSupported("INDEXFORMAT_UINT")}</li>
                         <li>ANISOTROPY: ${gd.maxSupported("ANISOTROPY")}</li>
                         <li>TEXTURE_SIZE: ${gd.maxSupported("TEXTURE_SIZE")}</li>
                         <li>CUBEMAP_TEXTURE_SIZE: ${gd.maxSupported("CUBEMAP_TEXTURE_SIZE")}</li>
                         <li>3D_TEXTURE_SIZE: ${gd.maxSupported("3D_TEXTURE_SIZE")}</li>
                         <li>RENDERTARGET_COLOR_TEXTURES: ${gd.maxSupported("RENDERTARGET_COLOR_TEXTURES")}</li>
                         <li>RENDERBUFFER_SIZE: ${gd.maxSupported("RENDERBUFFER_SIZE")}</li>
                         <li>FILEFORMAT_WEBM: ${gd.isSupported("FILEFORMAT_WEBM")}</li>
                         <li>FILEFORMAT_MP4: ${gd.isSupported("FILEFORMAT_MP4")}</li>
                         <li>FILEFORMAT_JPG: ${gd.isSupported("FILEFORMAT_JPG")}</li>
                         <li>FILEFORMAT_PNG: ${gd.isSupported("FILEFORMAT_PNG")}</li>
                         <li>FILEFORMAT_DDS: ${gd.isSupported("FILEFORMAT_DDS")}</li>
                         <li>FILEFORMAT_TGA: ${gd.isSupported("FILEFORMAT_TGA")}</li>
                         <li>Extensions: ${gd.extensions}</li></ul>'
                else "<ul><li>No GraphicsDevice support</li></ul>";

        document.getElementById("pd_details").innerHTML =
            '<h3>Physics Device Details</h3>
             <ul><li>Vendor: ${pd.vendor}</li>
                 <li>Version: ${pd.version}</li>
                 <li>MaxSubSteps: ${dw.maxSubSteps}</li>
                 <li>FixedTimeStep: ${dw.fixedTimeStep}</li>
                 <li>Gravity: ${dw.gravity}</li></ul>';

        document.getElementById("sd_details").innerHTML =
            "<h3>Sound Device Details</h3>" +
                if (sd != null)
                    '<ul><li>Vendor: ${sd.vendor}</li>
                         <li>Renderer: ${sd.renderer}</li>
                         <li>Version: ${sd.version}</li>
                         <li>Device: ${sd.deviceSpecifier}</li>
                         <li>Frequency: ${sd.frequency}</li>
                         <li>DopplerFactor: ${sd.dopplerFactor}</li>
                         <li>DopplerVelocity: ${sd.dopplerVelocity}</li>
                         <li>SpeedOfSound: ${sd.speedOfSound}</li>
                         <li>ListenerGain: ${sd.listenerGain}</li>
                         <li>ListenerTransform: ${sd.listenerTransform}</li>
                         <li>ListenerVelocity: ${sd.listenerVelocity}</li>
                         <li>FILEFORMAT_OGG: ${sd.isSupported("FILEFORMAT_OGG")}</li>
                         <li>FILEFORMAT_MP3: ${sd.isSupported("FILEFORMAT_MP3")}</li>
                         <li>FILEFORMAT_WAV: ${sd.isSupported("FILEFORMAT_WAV")}</li>
                         <li>Extensions: ${sd.extensions}</li></ul>'
                else "<ul><li>No SoundDevice support</li></ul>";

        document.getElementById("id_details").innerHTML =
            '<h3>Input Device Details</h3>
             <ul><li>POINTER_LOCK: ${id.isSupported("POINTER_LOCK")}</li></ul>';
    }}
}
