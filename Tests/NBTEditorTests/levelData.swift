let levelData: [UInt8] = [
    0x08, 0x00, 0x00, 0x00,     // version
    0x63, 0x08, 0x00, 0x00,     // byte size below (+8 = full file size)
    
    0x0A,       // Compound Tag
    0x00, 0x00, // tag name's length = 0
    
        0x08,       // String Tag
        0x0D, 0x00, // tag name's length = 13
        0x42, 0x69, 0x6F, 0x6D, 0x65, 0x4F, 0x76, 0x65, 0x72, 0x72, 0x69, 0x64, 0x65,   // BiomeOverride
        0x00, 0x00, // tag value's length = 0   (both tagName and tagValue are string)
        
        0x01,
        0x12, 0x00,
        0x43, 0x65, 0x6E, 0x74, 0x65, 0x72, 0x4D, 0x61, 0x70, 0x73, 0x54, 0x6F, 0x4F, 0x72, 0x69, 0x67, 0x69, 0x6E,     // CenterMapsToOrigin
        0x00,
        
        0x01,
        0x1E, 0x00,
        0x43, 0x6F, 0x6E, 0x66, 0x69, 0x72, 0x6D, 0x65, 0x64, 0x50, 0x6C, 0x61, 0x74, 0x66, 0x6F, 0x72, 0x6D, 0x4C, 0x6F, 0x63, 0x6B, 0x65, 0x64, 0x43, 0x6F, 0x6E, 0x74, 0x65, 0x6E, 0x74,     // ConfirmedPlatformLockedContent
        0x00,
        
        0x03,
        0x0A, 0x00,
        0x44, 0x69, 0x66, 0x66, 0x69, 0x63, 0x75, 0x6C, 0x74, 0x79,     // Difficulty
        0x02, 0x00, 0x00, 0x00,
        
        0x08,
        0x0F, 0x00,
        0x46, 0x6C, 0x61, 0x74, 0x57, 0x6F, 0x72, 0x6C, 0x64, 0x4C, 0x61, 0x79, 0x65, 0x72, 0x73,       // FlatWorldLayers
        0x05, 0x00,
        0x6E, 0x75, 0x6C, 0x6C, 0x0A,       // null
        
        0x01,
        0x0D, 0x00,
        0x46, 0x6F, 0x72, 0x63, 0x65, 0x47, 0x61, 0x6D, 0x65, 0x54, 0x79, 0x70, 0x65,       // ForceGameType
        0x00,
        
        0x03,
        0x08, 0x00,
        0x47, 0x61, 0x6D, 0x65, 0x54, 0x79, 0x70, 0x65,
        0x00, 0x00, 0x00, 0x00,
        
        0x03,
        0x09, 0x00,
        0x47, 0x65, 0x6E, 0x65, 0x72, 0x61, 0x74, 0x6F, 0x72,
        0x01, 0x00, 0x00, 0x00,
        
        0x08,
        0x10, 0x00,
        0x49, 0x6E, 0x76, 0x65, 0x6E, 0x74, 0x6F, 0x72, 0x79, 0x56, 0x65, 0x72, 0x73, 0x69, 0x6F, 0x6E,
        0x07, 0x00,
        0x31, 0x2E, 0x31, 0x36, 0x2E, 0x32, 0x30,
        
        0x01,
        0x0C, 0x00,
        0x4C, 0x41, 0x4E, 0x42, 0x72, 0x6F, 0x61, 0x64, 0x63, 0x61, 0x73, 0x74,
        0x01,
        
        0x01,
        0x12, 0x00,
        0x4C, 0x41, 0x4E, 0x42, 0x72, 0x6F, 0x61, 0x64, 0x63, 0x61, 0x73, 0x74, 0x49, 0x6E, 0x74, 0x65, 0x6E, 0x74,
        0x01,
        
        0x04,
        0x0A, 0x00,
        0x4C, 0x61, 0x73, 0x74, 0x50, 0x6C, 0x61, 0x79, 0x65, 0x64,
        0xBD, 0x25, 0x4B, 0x5F, 0x00, 0x00, 0x00, 0x00,
        
        0x08,
        0x09, 0x00,
        0x4C, 0x65, 0x76, 0x65, 0x6C, 0x4E, 0x61, 0x6D, 0x65,
        0x0A, 0x00,
        0x6D, 0x63, 0x62, 0x65, 0x20, 0x77, 0x6F, 0x72, 0x6C, 0x64,
        
        0x03,
        0x13, 0x00,
        0x4C, 0x69, 0x6D, 0x69, 0x74, 0x65, 0x64, 0x57, 0x6F, 0x72, 0x6C, 0x64, 0x4F, 0x72, 0x69, 0x67, 0x69, 0x6E, 0x58,
        0x54, 0x00, 0x00, 0x00,
        
        0x03,
        0x13, 0x00,
        0x4C, 0x69, 0x6D, 0x69, 0x74, 0x65, 0x64, 0x57, 0x6F, 0x72, 0x6C, 0x64, 0x4F, 0x72, 0x69, 0x67, 0x69, 0x6E, 0x59,
        0xFF, 0x7F, 0x00, 0x00,
        
        0x03,
        0x13, 0x00,
        0x4C, 0x69, 0x6D, 0x69, 0x74, 0x65, 0x64, 0x57, 0x6F, 0x72, 0x6C, 0x64, 0x4F, 0x72, 0x69, 0x67, 0x69, 0x6E, 0x5A,
        0x04, 0x00, 0x00, 0x00,
        
        0x09,       // List Tag
        0x1E, 0x00,
        0x4D, 0x69, 0x6E, 0x69, 0x6D, 0x75, 0x6D, 0x43, 0x6F, 0x6D, 0x70, 0x61, 0x74, 0x69, 0x62, 0x6C, 0x65, 0x43, 0x6C, 0x69, 0x65, 0x6E, 0x74, 0x56, 0x65, 0x72, 0x73, 0x69, 0x6F, 0x6E,     // MinimumCompatibleClientVersion
        0x03,                       // element is Int Tag
        0x05, 0x00, 0x00, 0x00,     // 5 tags
        0x01, 0x00, 0x00, 0x00,     // [1, 16, 0, 0, 0]
        0x10, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00,
        
        0x01,
        0x0F, 0x00,
        0x4D, 0x75, 0x6C, 0x74, 0x69, 0x70, 0x6C, 0x61, 0x79, 0x65, 0x72, 0x47, 0x61, 0x6D, 0x65,
        0x01,
        
        0x01,
        0x15, 0x00,
        0x4D, 0x75, 0x6C, 0x74, 0x69, 0x70, 0x6C, 0x61, 0x79, 0x65, 0x72, 0x47, 0x61, 0x6D, 0x65, 0x49, 0x6E, 0x74, 0x65, 0x6E, 0x74,
        0x01,
        
        0x03,
        0x0B, 0x00,
        0x4E, 0x65, 0x74, 0x68, 0x65, 0x72, 0x53, 0x63, 0x61, 0x6C, 0x65,
        0x08, 0x00, 0x00, 0x00,
        
        0x03,
        0x0E, 0x00,
        0x4E, 0x65, 0x74, 0x77, 0x6F, 0x72, 0x6B, 0x56, 0x65, 0x72, 0x73, 0x69, 0x6F, 0x6E,
        0x98, 0x01, 0x00, 0x00,
        
        0x03,
        0x08, 0x00,
        0x50, 0x6C, 0x61, 0x74, 0x66, 0x6F, 0x72, 0x6D,
        0x02, 0x00, 0x00, 0x00,
        
        0x03,
        0x17, 0x00,
        0x50, 0x6C, 0x61, 0x74, 0x66, 0x6F, 0x72, 0x6D, 0x42, 0x72, 0x6F, 0x61, 0x64, 0x63, 0x61, 0x73, 0x74, 0x49, 0x6E, 0x74, 0x65, 0x6E, 0x74,
        0x03, 0x00, 0x00, 0x00,
        
        0x04,
        0x0A, 0x00,
        0x52, 0x61, 0x6E, 0x64, 0x6F, 0x6D, 0x53, 0x65, 0x65, 0x64,
        0x37, 0x16, 0xAB, 0x4C, 0x00, 0x00, 0x00, 0x00,
        
        0x01,
        0x10, 0x00,
        0x53, 0x70, 0x61, 0x77, 0x6E, 0x56, 0x31, 0x56, 0x69, 0x6C, 0x6C,0x61, 0x67, 0x65, 0x72, 0x73,
        0x00,
        
        0x03,
        0x06, 0x00,
        0x53, 0x70, 0x61, 0x77, 0x6E, 0x58,
        0x54, 0x00, 0x00, 0x00,
        
        0x03,
        0x06, 0x00,
        0x53, 0x70, 0x61, 0x77, 0x6E, 0x59,
        0xFF, 0x7F, 0x00, 0x00,
        
        0x03,
        0x06, 0x00,
        0x53, 0x70, 0x61, 0x77, 0x6E, 0x5A,
        0x04, 0x00, 0x00, 0x00,
        
        0x03,
        0x0E, 0x00,
        0x53, 0x74, 0x6F, 0x72, 0x61, 0x67, 0x65, 0x56, 0x65, 0x72, 0x73, 0x69, 0x6F, 0x6E,
        0x08, 0x00, 0x00, 0x00,
        
        0x04,
        0x04, 0x00,
        0x54, 0x69, 0x6D, 0x65,
        0xBD, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        
        0x03,
        0x12, 0x00,
        0x58, 0x42, 0x4C, 0x42, 0x72, 0x6F, 0x61, 0x64, 0x63, 0x61, 0x73, 0x74, 0x49, 0x6E, 0x74, 0x65, 0x6E, 0x74,
        0x03, 0x00, 0x00, 0x00,
        
        0x0A,       // Compound Tag
        0x09, 0x00,
        0x61, 0x62, 0x69, 0x6C, 0x69, 0x74, 0x69, 0x65, 0x73,
        
            0x01,
            0x0A, 0x00,
            0x61, 0x74, 0x74, 0x61, 0x63, 0x6B, 0x6D, 0x6F, 0x62, 0x73,
            0x01,
            
            0x01,
            0x0D, 0x00,
            0x61, 0x74, 0x74, 0x61, 0x63, 0x6B, 0x70, 0x6C, 0x61, 0x79, 0x65, 0x72, 0x73,
            0x01,
            
            0x01,
            0x05, 0x00,
            0x62, 0x75, 0x69, 0x6C, 0x64,
            0x01,
            
            0x01,
            0x10, 0x00,
            0x64, 0x6F, 0x6F, 0x72, 0x73, 0x61, 0x6E, 0x64, 0x73, 0x77, 0x69, 0x74, 0x63, 0x68, 0x65, 0x73,
            0x01,
            
            0x05,
            0x08, 0x00,
            0x66, 0x6C, 0x79, 0x53, 0x70, 0x65, 0x65, 0x64,
            0xCD, 0xCC, 0x4C, 0x3D,
            
            0x01,
            0x06, 0x00,
            0x66, 0x6C, 0x79, 0x69, 0x6E, 0x67,
            0x00,
            
            0x01,
            0x0A, 0x00,
            0x69, 0x6E, 0x73, 0x74, 0x61, 0x62, 0x75, 0x69, 0x6C, 0x64,
            0x00,
            
            0x01,
            0x0C, 0x00,
            0x69, 0x6E, 0x76, 0x75, 0x6C, 0x6E, 0x65, 0x72, 0x61, 0x62, 0x6C, 0x65,
            0x00,
            
            0x01,
            0x09, 0x00,
            0x6C, 0x69, 0x67, 0x68, 0x74, 0x6E, 0x69, 0x6E, 0x67,
            0x00,
            
            0x01,
            0x06, 0x00,
            0x6D, 0x61, 0x79, 0x66, 0x6C, 0x79,
            0x00,
            
            0x01,
            0x04, 0x00,
            0x6D, 0x69, 0x6E, 0x65,
            0x01,
            
            0x01,
            0x02, 0x00,
            0x6F, 0x70,     // op
            0x00,
            
            0x01,
            0x0E, 0x00,
            0x6F, 0x70, 0x65, 0x6E, 0x63, 0x6F, 0x6E, 0x74, 0x61, 0x69, 0x6E, 0x65, 0x72, 0x73,
            0x01,
            
            0x03,
            0x10, 0x00,
            0x70, 0x65, 0x72, 0x6D, 0x69, 0x73, 0x73, 0x69, 0x6F, 0x6E, 0x73, 0x4C, 0x65, 0x76, 0x65, 0x6C,
            0x00, 0x00, 0x00, 0x00,
            
            0x03,
            0x16, 0x00,
            0x70, 0x6C, 0x61, 0x79, 0x65, 0x72, 0x50, 0x65, 0x72, 0x6D, 0x69, 0x73, 0x73, 0x69, 0x6F, 0x6E, 0x73, 0x4C, 0x65, 0x76, 0x65, 0x6C,
            0x01, 0x00, 0x00, 0x00,
            
            0x01,
            0x08, 0x00,
            0x74, 0x65, 0x6C, 0x65, 0x70, 0x6F, 0x72, 0x74,
            0x00,
            
            0x05,
            0x09, 0x00,
            0x77, 0x61, 0x6C, 0x6B, 0x53, 0x70, 0x65, 0x65, 0x64,
            0xCD, 0xCC, 0xCC, 0x3D,
            
        0x00,   // End Tag
            
        0x08,
        0x0F, 0x00,
        0x62, 0x61, 0x73, 0x65, 0x47, 0x61, 0x6D, 0x65, 0x56, 0x65, 0x72, 0x73, 0x69, 0x6F, 0x6E,       // baseGameVersion
        0x01, 0x00,
        0x2A,       // *
        
        0x01,
        0x11, 0x00,
        0x62, 0x6F, 0x6E, 0x75, 0x73, 0x43, 0x68, 0x65, 0x73, 0x74, 0x45, 0x6E, 0x61, 0x62, 0x6C, 0x65, 0x64,
        0x00,
        
        0x01,
        0x11, 0x00,
        0x62, 0x6F, 0x6E, 0x75, 0x73, 0x43, 0x68, 0x65, 0x73, 0x74, 0x53, 0x70, 0x61, 0x77, 0x6E, 0x65, 0x64,
        0x00,
        
        0x01,
        0x12, 0x00,
        0x63, 0x6F, 0x6D, 0x6D, 0x61, 0x6E, 0x64, 0x62, 0x6C, 0x6F, 0x63, 0x6B, 0x6F, 0x75, 0x74, 0x70, 0x75, 0x74,
        0x01,
        
        0x01,
        0x14, 0x00,
        0x63, 0x6F, 0x6D, 0x6D, 0x61, 0x6E, 0x64, 0x62, 0x6C, 0x6F, 0x63, 0x6B, 0x73, 0x65, 0x6E, 0x61, 0x62, 0x6C, 0x65, 0x64,
        0x01,
        
        0x01,
        0x0F, 0x00,
        0x63, 0x6F, 0x6D, 0x6D, 0x61, 0x6E, 0x64, 0x73, 0x45, 0x6E, 0x61, 0x62, 0x6C, 0x65, 0x64,
        0x00,
        
        0x04,
        0x0B, 0x00,
        0x63, 0x75, 0x72, 0x72, 0x65, 0x6E, 0x74, 0x54, 0x69, 0x63, 0x6B,
        0xBD, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        
        0x01,
        0x0F, 0x00,
        0x64, 0x6F, 0x64, 0x61, 0x79, 0x6C, 0x69, 0x67, 0x68, 0x74, 0x63, 0x79, 0x63, 0x6C, 0x65,
        0x01,
        
        0x01,
        0x0D, 0x00,
        0x64, 0x6F, 0x65, 0x6E, 0x74, 0x69, 0x74, 0x79, 0x64, 0x72, 0x6F, 0x70, 0x73,
        0x01,
        
        0x01,
        0x0A, 0x00,
        0x64, 0x6F, 0x66, 0x69, 0x72, 0x65, 0x74, 0x69, 0x63, 0x6B,
        0x01,
        
        0x01,
        0x12, 0x00,
        0x64, 0x6F, 0x69, 0x6D, 0x6D, 0x65, 0x64, 0x69, 0x61, 0x74, 0x65, 0x72, 0x65, 0x73, 0x70, 0x61, 0x77, 0x6E,
        0x00,
        
        0x01,
        0x0A, 0x00,
        0x64, 0x6F, 0x69, 0x6E, 0x73, 0x6F, 0x6D, 0x6E, 0x69, 0x61,
        0x01,
        
        0x01,
        0x09, 0x00,
        0x64, 0x6F, 0x6D, 0x6F, 0x62, 0x6C, 0x6F, 0x6F, 0x74,
        0x01,
        
        0x01,
        0x0D, 0x00,
        0x64, 0x6F, 0x6D, 0x6F, 0x62, 0x73, 0x70, 0x61, 0x77, 0x6E, 0x69, 0x6E, 0x67,
        0x01,
        
        0x01,
        0x0B, 0x00,
        0x64, 0x6F, 0x74, 0x69, 0x6C, 0x65, 0x64, 0x72, 0x6F, 0x70, 0x73,
        0x01,
        
        0x01,
        0x0E, 0x00,
        0x64, 0x6F, 0x77, 0x65, 0x61, 0x74, 0x68, 0x65, 0x72, 0x63, 0x79, 0x63, 0x6C, 0x65,
        0x01,
        
        0x01,
        0x0E, 0x00,
        0x64, 0x72, 0x6F, 0x77, 0x6E, 0x69, 0x6E, 0x67, 0x64, 0x61, 0x6D, 0x61, 0x67, 0x65,
        0x01,
        
        0x03,
        0x08, 0x00,
        0x65, 0x64, 0x75, 0x4F, 0x66, 0x66, 0x65, 0x72,
        0x00, 0x00, 0x00, 0x00,
        
        0x01,
        0x18, 0x00,
        0x65, 0x64, 0x75, 0x63, 0x61, 0x74, 0x69, 0x6F, 0x6E, 0x46, 0x65, 0x61, 0x74, 0x75, 0x72, 0x65, 0x73, 0x45, 0x6E, 0x61, 0x62, 0x6C, 0x65, 0x64,
        0x00,
        
        0x01,
        0x14, 0x00,
        0x65, 0x78, 0x70, 0x65, 0x72, 0x69, 0x6D, 0x65, 0x6E, 0x74, 0x61, 0x6C, 0x67, 0x61, 0x6D, 0x65, 0x70, 0x6C, 0x61, 0x79,
        0x00,
        
        0x01,
        0x0A, 0x00,
        0x66, 0x61, 0x6C, 0x6C, 0x64, 0x61, 0x6D, 0x61, 0x67, 0x65,
        0x01,
        
        0x01,
        0x0A, 0x00,
        0x66, 0x69, 0x72, 0x65, 0x64, 0x61, 0x6D, 0x61, 0x67, 0x65,
        0x01,
        
        0x03,
        0x14, 0x00,
        0x66, 0x75, 0x6E, 0x63, 0x74, 0x69, 0x6F, 0x6E, 0x63, 0x6F, 0x6D, 0x6D, 0x61, 0x6E, 0x64, 0x6C, 0x69, 0x6D, 0x69, 0x74,
        0x10, 0x27, 0x00, 0x00,
        
        0x01,
        0x17, 0x00,
        0x68, 0x61, 0x73, 0x42, 0x65, 0x65, 0x6E, 0x4C, 0x6F, 0x61, 0x64, 0x65, 0x64, 0x49, 0x6E, 0x43, 0x72, 0x65, 0x61, 0x74, 0x69, 0x76, 0x65,
        0x00,
        
        0x01,
        0x15, 0x00,
        0x68, 0x61, 0x73, 0x4C, 0x6F, 0x63, 0x6B, 0x65, 0x64, 0x42, 0x65, 0x68, 0x61, 0x76, 0x69, 0x6F, 0x72, 0x50, 0x61, 0x63, 0x6B,
        0x00,
        
        0x01,
        0x15, 0x00,
        0x68, 0x61, 0x73, 0x4C, 0x6F, 0x63, 0x6B, 0x65, 0x64, 0x52, 0x65, 0x73, 0x6F, 0x75, 0x72, 0x63, 0x65, 0x50, 0x61, 0x63, 0x6B,
        0x00,
        
        0x01,
        0x0E, 0x00,
        0x69, 0x6D, 0x6D, 0x75, 0x74, 0x61, 0x62, 0x6C, 0x65, 0x57, 0x6F, 0x72, 0x6C, 0x64,
        0x00,
        
        0x01,
        0x14, 0x00,
        0x69, 0x73, 0x46, 0x72, 0x6F, 0x6D, 0x4C, 0x6F, 0x63, 0x6B, 0x65, 0x64, 0x54, 0x65, 0x6D, 0x70, 0x6C, 0x61, 0x74, 0x65,
        0x00,
        
        0x01,
        0x13, 0x00,
        0x69, 0x73, 0x46, 0x72, 0x6F, 0x6D, 0x57, 0x6F, 0x72, 0x6C, 0x64, 0x54, 0x65, 0x6D, 0x70, 0x6C, 0x61, 0x74, 0x65,
        0x00,
        
        0x01,
        0x10, 0x00,
        0x69, 0x73, 0x53, 0x69, 0x6E, 0x67, 0x6C, 0x65, 0x55, 0x73, 0x65, 0x57, 0x6F, 0x72, 0x6C, 0x64,
        0x00,
        
        0x01,
        0x1B, 0x00,
        0x69, 0x73, 0x57, 0x6F, 0x72, 0x6C, 0x64, 0x54, 0x65, 0x6D, 0x70, 0x6C, 0x61, 0x74, 0x65, 0x4F, 0x70, 0x74, 0x69, 0x6F, 0x6E, 0x4C, 0x6F, 0x63, 0x6B, 0x65, 0x64,
        0x00,
        
        0x01,
        0x0D, 0x00,
        0x6B, 0x65, 0x65, 0x70, 0x69, 0x6E, 0x76, 0x65, 0x6E, 0x74, 0x6F, 0x72, 0x79,
        0x00,
        
        0x09,
        0x15, 0x00,
        0x6C, 0x61, 0x73, 0x74, 0x4F, 0x70, 0x65, 0x6E, 0x65, 0x64, 0x57, 0x69, 0x74, 0x68, 0x56, 0x65, 0x72, 0x73, 0x69, 0x6F, 0x6E,
        0x03,
        0x05, 0x00, 0x00, 0x00,
        0x01, 0x00, 0x00, 0x00,
        0x10, 0x00, 0x00, 0x00,
        0x14, 0x00, 0x00, 0x00,
        0x03, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00,
        
        0x05,
        0x0E, 0x00,
        0x6C, 0x69, 0x67, 0x68, 0x74, 0x6E, 0x69, 0x6E, 0x67, 0x4C, 0x65, 0x76, 0x65, 0x6C,
        0x00, 0x00, 0x00, 0x00,
        
        0x03,
        0x0D, 0x00,
        0x6C, 0x69, 0x67, 0x68, 0x74, 0x6E, 0x69, 0x6E, 0x67, 0x54, 0x69, 0x6D, 0x65,
        0x4A, 0x76, 0x01, 0x00,
        
        0x03,
        0x11, 0x00,
        0x6C, 0x69, 0x6D, 0x69, 0x74, 0x65, 0x64, 0x57, 0x6F, 0x72, 0x6C, 0x64, 0x44, 0x65, 0x70, 0x74, 0x68,
        0x10, 0x00, 0x00, 0x00,
        
        0x03,
        0x11, 0x00,
        0x6C, 0x69, 0x6D, 0x69, 0x74, 0x65, 0x64, 0x57, 0x6F, 0x72, 0x6C, 0x64, 0x57, 0x69, 0x64, 0x74, 0x68,
        0x10, 0x00, 0x00, 0x00,
        
        0x03,
        0x15, 0x00,
        0x6D, 0x61, 0x78, 0x63, 0x6F, 0x6D, 0x6D, 0x61, 0x6E, 0x64, 0x63, 0x68, 0x61, 0x69, 0x6E, 0x6C, 0x65, 0x6E, 0x67, 0x74, 0x68,
        0xFF, 0xFF, 0x00, 0x00,
        
        0x01,
        0x0B, 0x00,
        0x6D, 0x6F, 0x62, 0x67, 0x72, 0x69, 0x65, 0x66, 0x69, 0x6E, 0x67,
        0x01,
        
        0x01,
        0x13, 0x00,
        0x6E, 0x61, 0x74, 0x75, 0x72, 0x61, 0x6C, 0x72, 0x65, 0x67, 0x65, 0x6E, 0x65, 0x72, 0x61, 0x74, 0x69, 0x6F, 0x6E,
        0x01,
        
        0x08,
        0x04, 0x00,
        0x70, 0x72, 0x69, 0x64,
        0x00, 0x00,
        
        0x01,
        0x03, 0x00,
        0x70, 0x76, 0x70,       // pvp
        0x01,
        
        0x05,
        0x09, 0x00,
        0x72, 0x61, 0x69, 0x6E, 0x4C, 0x65, 0x76, 0x65, 0x6C,
        0x00, 0x00, 0x00, 0x00,
        
        0x03,
        0x08, 0x00,
        0x72, 0x61, 0x69, 0x6E, 0x54, 0x69, 0x6D, 0x65,
        0xCA, 0xBA, 0x00, 0x00,
        
        0x03,
        0x0F, 0x00,
        0x72, 0x61, 0x6E, 0x64, 0x6F, 0x6D, 0x74, 0x69, 0x63, 0x6B, 0x73, 0x70, 0x65, 0x65, 0x64,
        0x01, 0x00, 0x00, 0x00,
        
        0x01,
        0x1E, 0x00,
        0x72, 0x65, 0x71, 0x75, 0x69, 0x72, 0x65, 0x73, 0x43, 0x6F, 0x70, 0x69, 0x65, 0x64, 0x50, 0x61, 0x63, 0x6B, 0x52, 0x65, 0x6D, 0x6F, 0x76, 0x61, 0x6C, 0x43, 0x68, 0x65, 0x63, 0x6B,
        0x00,
        
        0x01,
        0x13, 0x00,
        0x73, 0x65, 0x6E, 0x64, 0x63, 0x6F, 0x6D, 0x6D, 0x61, 0x6E, 0x64, 0x66, 0x65, 0x65, 0x64, 0x62, 0x61, 0x63, 0x6B,
        0x01,
        
        0x03,
        0x14, 0x00,
        0x73, 0x65, 0x72, 0x76, 0x65, 0x72, 0x43, 0x68, 0x75, 0x6E, 0x6B, 0x54, 0x69, 0x63, 0x6B, 0x52, 0x61, 0x6E, 0x67, 0x65,
        0x06, 0x00, 0x00, 0x00,
        
        0x01,
        0x0F, 0x00,
        0x73, 0x68, 0x6F, 0x77, 0x63, 0x6F, 0x6F, 0x72, 0x64, 0x69, 0x6E, 0x61, 0x74, 0x65, 0x73,
        0x00,
        
        0x01,
        0x11, 0x00,
        0x73, 0x68, 0x6F, 0x77, 0x64, 0x65, 0x61, 0x74, 0x68, 0x6D, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x73,
        0x01,
        
        0x01,
        0x08, 0x00,
        0x73, 0x68, 0x6F, 0x77, 0x74, 0x61, 0x67, 0x73,
        0x01,
        
        0x01,
        0x09, 0x00,
        0x73, 0x70, 0x61, 0x77, 0x6E, 0x4D, 0x6F, 0x62, 0x73,
        0x01,
        
        0x03,
        0x0B, 0x00,
        0x73, 0x70, 0x61, 0x77, 0x6E, 0x72, 0x61, 0x64, 0x69, 0x75, 0x73,
        0x05, 0x00, 0x00, 0x00,
        
        0x01,
        0x13, 0x00,
        0x73, 0x74, 0x61, 0x72, 0x74, 0x57, 0x69, 0x74, 0x68, 0x4D, 0x61, 0x70, 0x45, 0x6E, 0x61, 0x62, 0x6C, 0x65, 0x64,
        0x00,
        
        0x01,
        0x14, 0x00,
        0x74, 0x65, 0x78, 0x74, 0x75, 0x72, 0x65, 0x50, 0x61, 0x63, 0x6B, 0x73, 0x52, 0x65, 0x71, 0x75, 0x69, 0x72, 0x65, 0x64,
        0x00,
        
        0x01,
        0x0B, 0x00,
        0x74, 0x6E, 0x74, 0x65, 0x78, 0x70, 0x6C, 0x6F, 0x64, 0x65, 0x73,
        0x01,
        
        0x01,
        0x13, 0x00,
        0x75, 0x73, 0x65, 0x4D, 0x73, 0x61, 0x47, 0x61, 0x6D, 0x65, 0x72, 0x74, 0x61, 0x67, 0x73, 0x4F, 0x6E, 0x6C, 0x79,
        0x00,
        
        0x04,
        0x0F, 0x00,
        0x77, 0x6F, 0x72, 0x6C, 0x64, 0x53, 0x74, 0x61, 0x72, 0x74, 0x43, 0x6F, 0x75, 0x6E, 0x74,
        0xFE, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
        
    0x00        // End Tag
]
