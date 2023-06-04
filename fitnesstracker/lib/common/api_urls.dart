class ApiUrls {
  static const String baseUrl =
      'https://5ced-2a07-23c0-9-7000-00-b26e.ngrok-free.app';
  static const String login = '/api/Auth/Login';
  static const String register = '/api/Auth/Register';
  static const String refreshToken = '/api/Auth/RefreshToken';

  static const String getImage = '$baseUrl/api/files/';

  // Role Plan Url
  static const String getAllRole = '/api/Role/GetAllRoles/roles';
  static const String getRoleById = '/api/Role/';
  static const String createRole = '/api/Role/CreateRole/create?roleName=';

  static const String createUserRole = '/api/Role/AddUserToRole/AddUserToRole';
  static const String deleteUserRole =
      '/api/Role/RemoveUserFromRole/RemoveUserFromRole';
  // User Url
  static const String getAllUser = '/api/Role/GetAllUsers/users';

  //User to Role
  static const String addUserToRole = '/api/Role/AddUserToRole/AddUserToRole?';
  static const String removeUserFromRole =
      '/api/Role/RemoveUserFromRole/RemoveUserFromRole';

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
  static const String getAllPlanTypesPlans = 'api/PlanTypes/all';
  static const String getPlanTypesPlansById = 'api/PlanTypes/';
  static const String createPlanTypesPlans = 'api/PlanTypes/create';
  static const String updatePlanTypesPlans = 'api/PlanTypes/updatePlanType';
  static const String deletePlanTypesPlans = 'api/PlanTypes/';
  static const String getPlanTypesPlansByPlanIdDay =
      '/api/PlanTypes/planTypesByPlanIdDay?';
}
