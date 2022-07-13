using Microsoft.AspNetCore.Authentication.JwtBearer;

var builder = WebApplication.CreateBuilder(args);
{
    builder.Services.AddAuthentication(JwtBearerDefaults.AuthenticationScheme)
        .AddJwtBearer(options =>
        {
            options.Audience = builder.Configuration.GetValue<string>("Jwt:Audience");
            options.Authority = builder.Configuration.GetValue<string>("Jwt:Authority");
            options.RequireHttpsMetadata = builder.Environment.IsProduction();
        });
}

var app = builder.Build();
{
    app.UseHttpsRedirection();
    
    app.Run();
}