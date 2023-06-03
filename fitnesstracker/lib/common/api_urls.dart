class ApiUrls {
  static const String baseUrl =
      'https://10.0.2.2:7247';
  static const String login = '/api/Auth/Login';
  static const String register = '/api/Auth/Register';
  static const String refreshToken = '/api/Auth/RefreshToken';

  static const String getImage = '$baseUrl/api/files/';

  // Role Plan Url
  static const String getAllRole = '/api/Role/roles';
  static const String getRoleUsers = '/api/Role/GetRoleUsers?roleName=';
  static const String createRole = '/api/Role/create?roleName=';
  static const String createUserRole = '/api/Role/AddUserToRole/AddUserToRole';
  static const String deleteUserRole = '/api/Role/delete?roleName=';
  static const String getAllUser = '/api/Role/users';
  static const String deleteRole = '/api/Role/delete?roleName=';
  static const String addUserToRole = '/api/Role/AddUserToRole?';
  static const String removeUserFromRole = '/api/Role/RemoveUserFromRole';

  // Diet Url
  static const String getAllDiet = '/api/Diet/all';
  static const String getDietById = '/api/Diet/';
  static const String createDiet = '/api/Diet/create';
  static const String updateDiet = '/api/Diet/update';
  static const String deleteDiet = '/api/Diet/delete';

  //Workout Url
  static const String getAllWorkout = '/api/Workout/all';
  static const String getWorkoutById = '/api/Workout/';
  static const String createWorkout = '/api/Workout/create';
  static const String updateWorkout = '/api/Workout/update/';
  static const String deleteWorkout = '/api/Workout/delete/';
  ApiUrls._();

  //PlanType Url
  static const String getAllPlan = '/api/PlanTypes/getPlans';
  static const String getPlanById = '/api/PlanTypes/getPlanById/';
  static const String createPlan = '/api/PlanTypes/createPlan';
  static const String updatePlan = '/api/PlanTypes/updatePlan';
  static const String deletePlan = '/api/PlanTypes/deletePlan/';

  //PlanTypes Plans Url
  static const String getAllPlanTypesPlans = '/api/PlanTypes/all';
  static const String getPlanTypesPlansById = '/api/PlanTypes/';
  static const String createPlanTypesPlans = '/api/PlanTypes/create';
  static const String updatePlanTypesPlans = '/api/PlanTypes/updatePlanType';
  static const String deletePlanTypesPlans = '/api/PlanTypes/';
  static const String getPlanTypesPlansByPlanIdDay =
      '/api/PlanTypes/planTypesByPlanIdDay?';
  static const String deletePlanTypesPlanByPlanIdDay =
      '/api/PlanTypes/planTypesByPlanIdDay?';

  static const String addUserWorkoutData = '/api/UserData/user/dayworkout';
  static const String subscribeToPlan = '/api/UserData/user/plan/';
  static const String getUserWorkoutData = '/api/UserData/user/plandata';
}
