package org.apache.roller.ui.authoring.struts.forms;

import org.apache.roller.RollerException;
import java.util.Locale;

/**
 * Generated by XDoclet/ejbdoclet/strutsform. This class can be further processed with XDoclet/webdoclet/strutsconfigxml and XDoclet/webdoclet/strutsvalidationxml.
 *
 * @struts.form name="objectAuditForm"
 */
public class ObjectAuditForm
    extends    org.apache.struts.action.ActionForm
    implements java.io.Serializable
{
    protected java.lang.String id;
    protected java.util.Date changeTime;
    protected java.lang.String comment;
    protected java.lang.String objectClass;
    protected java.lang.String objectId;
    protected java.lang.String userId;

    /** Default empty constructor. */
    public ObjectAuditForm() {}

    /** Constructor that takes the data object as argument. */
    public ObjectAuditForm(org.apache.roller.pojos.ObjectAuditData dataHolder, java.util.Locale locale) throws RollerException
    {
       copyFrom(dataHolder, locale);
    }

    public java.lang.String getId()
    {
        return this.id;
    }

   /** 
    */
    public void setId( java.lang.String id )
    {
        this.id = id;
    }

    public java.util.Date getChangeTime()
    {
        return this.changeTime;
    }

   /** 
    */
    public void setChangeTime( java.util.Date changeTime )
    {
        this.changeTime = changeTime;
    }

    public java.lang.String getComment()
    {
        return this.comment;
    }

   /** 
    */
    public void setComment( java.lang.String comment )
    {
        this.comment = comment;
    }

    public java.lang.String getObjectClass()
    {
        return this.objectClass;
    }

   /** 
    */
    public void setObjectClass( java.lang.String objectClass )
    {
        this.objectClass = objectClass;
    }

    public java.lang.String getObjectId()
    {
        return this.objectId;
    }

   /** 
    */
    public void setObjectId( java.lang.String objectId )
    {
        this.objectId = objectId;
    }

    public java.lang.String getUserId()
    {
        return this.userId;
    }

   /** 
    */
    public void setUserId( java.lang.String userId )
    {
        this.userId = userId;
    }

    /**
     * Copy values from this form bean to the specified data object.
     * Only copies primitive types (Boolean, boolean, String, Integer, int, Timestamp, Date)
     */
    public void copyTo(org.apache.roller.pojos.ObjectAuditData dataHolder, Locale locale) throws RollerException
    {

        dataHolder.setId(this.id);

        dataHolder.setChangeTime(this.changeTime);

        dataHolder.setComment(this.comment);

        dataHolder.setObjectClass(this.objectClass);

        dataHolder.setObjectId(this.objectId);

        dataHolder.setUserId(this.userId);

    }

    /**
     * Copy values from specified data object to this form bean.
     * Includes all types.
     */
    public void copyFrom(org.apache.roller.pojos.ObjectAuditData dataHolder, Locale locale) throws RollerException
    {

        this.id = dataHolder.getId();

        this.changeTime = dataHolder.getChangeTime();

        this.comment = dataHolder.getComment();

        this.objectClass = dataHolder.getObjectClass();

        this.objectId = dataHolder.getObjectId();

        this.userId = dataHolder.getUserId();

    }

    public void doReset(
    	org.apache.struts.action.ActionMapping mapping, 
    	javax.servlet.ServletRequest request)
    {

        this.id = null;

        this.changeTime = null;

        this.comment = null;

        this.objectClass = null;

        this.objectId = null;

        this.userId = null;

    }
    public void reset(
    	org.apache.struts.action.ActionMapping mapping, 
    	javax.servlet.ServletRequest request)
    {
        doReset(mapping, request);
    }
    public void reset(
    	org.apache.struts.action.ActionMapping mapping, 
    	javax.servlet.http.HttpServletRequest request)
    {
        doReset(mapping, request);
    }
}
