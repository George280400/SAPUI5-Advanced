@EndUserText.label: 'HCM - Master'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
define root view entity Z_C_HCM_MASTER_1603 as projection on Z_I_HCM_MASTER_1603
{

@ObjectModel.text.element: [ 'EmployeeName' ]
    key ENumber as EmployeeNumber,
    EName as EmployeeName,
    EDepartment as EmployeeDepartment,
    Status as EmployeeStatus,
    JobTitle as JobTitle,
    StartDate as StartDate,
    EndDate as EndDate,
    Email as Email,
    @ObjectModel.text.element: [ 'ManagerName' ]
    MNumber as ManagerNumber,
    MName as ManagerName,
    MDepartment as ManagerDepartment,
    @Semantics.user.createdBy: true
    CreaDateTime as CreatedOn,
    CreaUname as CreatedBy,
    @Semantics.user.lastChangedBy: true
    LchgDateTime as ChangedOn,
    LchgUname as ChangedBy
    
    
}
