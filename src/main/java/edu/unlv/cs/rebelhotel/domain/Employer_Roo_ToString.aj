// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package edu.unlv.cs.rebelhotel.domain;

import java.lang.String;

privileged aspect Employer_Roo_ToString {
    
    public String Employer.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Location: ").append(getLocation());
        return sb.toString();
    }
    
}