@AbapCatalog.sqlViewName: 'ZV_HCM_ALFA03'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'HCM - Master'
define root view Z_I_HCM_MASTER_1603
  as select from zhcm_master_1603
{

  key e_number       as ENumber,
      e_name         as EName,
      e_department   as EDepartment,
      status         as Status,
      job_title      as JobTitle,
      start_date     as StartDate,
      end_date       as EndDate,
      email          as Email,
      m_number       as MNumber,
      m_name         as MName,
      m_department   as MDepartment,
      crea_date_time as CreaDateTime,
      crea_uname     as CreaUname,
      lchg_date_time as LchgDateTime,
      lchg_uname     as LchgUname

}
