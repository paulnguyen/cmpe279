package org.apache.roller.pojos.wrapper;

import org.apache.roller.pojos.UserData;

/**
 * Generated wrapper for class: org.apache.roller.pojos.UserData
 */
public class UserDataWrapper {

    // keep a reference to the wrapped pojo
    private UserData pojo = null;

    // this is private so that we can force the use of the .wrap(pojo) method
    private UserDataWrapper(UserData toWrap) {
        this.pojo = toWrap;
    }

    // wrap the given pojo if it is not null
    public static UserDataWrapper wrap(UserData toWrap) {
        if(toWrap != null)
            return new UserDataWrapper(toWrap);

        return null;
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public java.lang.String getUserName()
    {   
        return this.pojo.getUserName();
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public java.lang.String getFullName()
    {   
        return this.pojo.getFullName();
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public java.lang.String getEmailAddress()
    {   
        return this.pojo.getEmailAddress();
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public java.util.Date getDateCreated()
    {   
        return this.pojo.getDateCreated();
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public java.lang.String getLocale()
    {   
        return this.pojo.getLocale();
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public java.lang.String getTimeZone()
    {   
        return this.pojo.getTimeZone();
    }

    /**
     * this is a special method to access the original pojo
     * we don't really want to do this, but it's necessary
     * because some parts of the rendering process still need the
     * orginal pojo object
     */
    public org.apache.roller.pojos.UserData getPojo() {
        return this.pojo;
    }

}
