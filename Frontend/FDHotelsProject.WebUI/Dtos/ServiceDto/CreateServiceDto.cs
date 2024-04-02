using System.ComponentModel.DataAnnotations;

namespace FDHotelsProject.WebUI.Dtos.ServiceDto
{
    public class CreateServiceDto
    {
        public string? ServiceIcon { get; set; }

        [Required(ErrorMessage = "Hizmet başlığı giriniz")]
        [StringLength(100,ErrorMessage ="Hizmet başlığı en fazla 100 karakter olabilir")]
        public string Title { get; set; }
        public string? Description { get; set; }
    }
}
