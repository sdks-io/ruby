# swagger_petstore
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module SwaggerPetstore
  # UserController
  class UserController < BaseController
    # Creates list of users with given input array
    # @param [List of User] body Required parameter: List of user object
    # @return [void] response from the API call
    def create_users_with_array_input(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/user/createWithArray',
                                     Server::SERVER1)
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .is_response_void(true)
                   .local_error('default',
                                'successful operation',
                                APIException))
        .execute
    end

    # Creates list of users with given input array
    # @param [List of User] body Required parameter: List of user object
    # @return [void] response from the API call
    def create_users_with_list_input(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/user/createWithList',
                                     Server::SERVER1)
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .is_response_void(true)
                   .local_error('default',
                                'successful operation',
                                APIException))
        .execute
    end

    # Get user by user name
    # @param [String] username Required parameter: The name that needs to be
    # fetched. Use user1 for testing.
    # @return [User] response from the API call
    def get_user_by_name(username)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/user/{username}',
                                     Server::SERVER1)
                   .template_param(new_parameter(username, key: 'username')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(User.method(:from_hash))
                   .local_error('400',
                                'Invalid username supplied',
                                APIException)
                   .local_error('404',
                                'User not found',
                                APIException))
        .execute
    end

    # This can only be done by the logged in user.
    # @param [String] username Required parameter: name that need to be
    # updated
    # @param [User] body Required parameter: Updated user object
    # @return [void] response from the API call
    def update_user(username,
                    body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/user/{username}',
                                     Server::SERVER1)
                   .template_param(new_parameter(username, key: 'username')
                                    .should_encode(true))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .is_response_void(true)
                   .local_error('400',
                                'Invalid user supplied',
                                APIException)
                   .local_error('404',
                                'User not found',
                                APIException))
        .execute
    end

    # This can only be done by the logged in user.
    # @param [String] username Required parameter: The name that needs to be
    # deleted
    # @return [void] response from the API call
    def delete_user(username)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/user/{username}',
                                     Server::SERVER1)
                   .template_param(new_parameter(username, key: 'username')
                                    .should_encode(true))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .is_response_void(true)
                   .local_error('400',
                                'Invalid username supplied',
                                APIException)
                   .local_error('404',
                                'User not found',
                                APIException))
        .execute
    end

    # Logs user into the system
    # @param [String] username Required parameter: The user name for login
    # @param [String] password Required parameter: The password for login in
    # clear text
    # @return [String] response from the API call
    def login_user(username,
                   password)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/user/login',
                                     Server::SERVER1)
                   .query_param(new_parameter(username, key: 'username'))
                   .query_param(new_parameter(password, key: 'password'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:deserialize_primitive_types))
                   .deserialize_into(proc do |response| response.to_s end)
                   .is_primitive_response(true)
                   .local_error('400',
                                'Invalid username/password supplied',
                                APIException))
        .execute
    end

    # Logs out current logged in user session
    # @return [void] response from the API call
    def logout_user
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/user/logout',
                                     Server::SERVER1)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .is_response_void(true)
                   .local_error('default',
                                'successful operation',
                                APIException))
        .execute
    end

    # This can only be done by the logged in user.
    # @param [User] body Required parameter: Created user object
    # @return [void] response from the API call
    def create_user(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/user',
                                     Server::SERVER1)
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .is_response_void(true)
                   .local_error('default',
                                'successful operation',
                                APIException))
        .execute
    end
  end
end
