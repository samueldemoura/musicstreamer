// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.edu.ufpb.nhrf.musicstreamer.web;

import br.edu.ufpb.nhrf.musicstreamer.domain.UserAccount;
import br.edu.ufpb.nhrf.musicstreamer.service.api.UserAccountService;
import br.edu.ufpb.nhrf.musicstreamer.web.UserAccountDeserializer;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonNode;
import io.springlets.web.NotFoundException;
import java.io.IOException;
import org.springframework.boot.jackson.JsonComponent;
import org.springframework.core.convert.ConversionService;

privileged aspect UserAccountDeserializer_Roo_EntityDeserializer {
    
    declare @type: UserAccountDeserializer: @JsonComponent;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return UserAccountService
     */
    public UserAccountService UserAccountDeserializer.getUserAccountService() {
        return userAccountService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param userAccountService
     */
    public void UserAccountDeserializer.setUserAccountService(UserAccountService userAccountService) {
        this.userAccountService = userAccountService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConversionService
     */
    public ConversionService UserAccountDeserializer.getConversionService() {
        return conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param conversionService
     */
    public void UserAccountDeserializer.setConversionService(ConversionService conversionService) {
        this.conversionService = conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param jsonParser
     * @param context
     * @param codec
     * @param tree
     * @return UserAccount
     * @throws IOException
     */
    public UserAccount UserAccountDeserializer.deserializeObject(JsonParser jsonParser, DeserializationContext context, ObjectCodec codec, JsonNode tree) throws IOException {
        String idText = tree.asText();
        Long id = conversionService.convert(idText, Long.class);
        UserAccount userAccount = userAccountService.findOne(id);
        if (userAccount == null) {
            throw new NotFoundException("UserAccount not found");
        }
        return userAccount;
    }
    
}