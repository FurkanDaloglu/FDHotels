using System.ComponentModel.DataAnnotations;

namespace FDHotelsProject.WebUI.Dtos.ServiceDto
{
    public class UpdateServiceDto
    {
        public int ServiceID { get; set; }
        public string? ServiceIcon { get; set; }

        [Required(ErrorMessage = "Service ikon linkini giriniz")]
        [StringLength(100, ErrorMessage = "Hizmet başlığı en fazla 100 karakter olabilir")]
        public string Title { get; set; }
        public string? Description { get; set; }
    }
}
