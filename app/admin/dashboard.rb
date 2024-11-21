# frozen_string_literal: true
ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    # div class: "blank_slate_container", id: "dashboard_default_message" do
    #   span class: "blank_slate" do
    #     span I18n.t("active_admin.dashboard_welcome.welcome")
    #     small I18n.t("active_admin.dashboard_welcome.call_to_action")
    #   end
    # end

div class: "row" do
  div class: "col" do
    panel "Prateeksha - Gap Analysis File" do
      para do
        link_to "This is the link to Gap Analysis file", "https://docs.google.com/spreadsheets/d/15Ny3oC-oq4gpbnEc2Ayn8wHd18Orlkn4/edit?usp=drive_link&ouid=107716587175461103562&rtpof=true&sd=true", target: "_blank"
      end
      para do
        "A thorough gap analysis matrix identifying security gaps, current state evaluations, and actionable recommendations to address vulnerabilities and improve compliance readiness."
      end
    end
  end
end

div class: "row" do
  div class: "col" do
    panel "Danni - NIDS Google Collab demo" do
      para do
        link_to "This is the link to NIDS Google Collab demo", "https://colab.research.google.com/drive/1uvEZtEMeQHdHGQOt9fdPLCgVGBxTSzz0?usp=sharing", target: "_blank"
      end
      para do
        "A machine learning-based IDS project to meet ISO 27001 compliance monitoring requirements."
      end
    end
  end
end

div class: "row" do
  div class: "col" do
    panel "Bipin - Wordpress Analysis for Quote control" do
      para do
        link_to "This is the link to WordPress Analysis for Quote control", "https://docs.google.com/document/d/1UXFdwhoocwuQ8zg-rVT3XTnybQeZ7rh085P-i1zA9F8/edit?tab=t.0#heading=h.k0cuwe5k5qcl", target: "_blank"
      end
      para do
        "The WordPress documentation review highlighted best practices in securing and optimizing WordPress installations. Key takeaways include strategies for security and performance optimization. These align with ISO 27001 standards by emphasizing continuous risk management and system integrity."
      end
    end
  end
end

div class: "row" do
  div class: "col" do
    panel "Bipin - Compliance and research document" do
      para do
        link_to "This is the link to Compliance and research document", "https://drive.google.com/file/d/18yYjHcSpHhxY8zsxZl-FEhEV0YuVI23p/view?usp=sharing", target: "_blank"
      end
      para do
        "The compliance document outlines the regulatory requirements for standards like HIPAA, GDPR, and PCI-DSS. It provides actionable guidelines for safeguarding sensitive data, addressing privacy concerns, and establishing protocols for security and audit readiness, aligning with ISO 27001 principles for regulatory compliance and information security management. As per original requirements by Quote Control."
      end
    end
  end
end
div class: "row" do
  div class: "col" do
    panel "Prateeksha - Security templates" do
      para do
        link_to "This is the link to the document for Security templates", "https://drive.google.com/file/d/18yYjHcSpHhxY8zsxZl-FEhEV0YuVI23p/view?usp=sharing", target: "_blank"
      end
      para do
        "Comprehensive templates for security testing reports, vulnerability logs, and secure coding practices to standardize documentation and support compliance efforts."
      end
    end
  end
end

div class: "row" do
  div class: "col" do
    panel "Prateeksha - Mitre attack framework" do
      para do
        link_to "This is the link to Mitre attack framework", "https://docs.google.com/document/d/1KaNhD-4rR_wDG9Pnwxf3q1VJvnFG8lvb/edit", target: "_blank"
      end
      para do
        "A customized framework designed to map, detect, and mitigate threats, providing a structured approach to proactive threat management."
      end
    end
  end
end

div class: "row" do
  div class: "col" do
    panel "Prateeksha -Enhance policy" do
      para do
        link_to "This is the link to Enhance policy", "https://docs.google.com/document/d/1k1YSu3vAPiV5zkdefExDLeyci4w5mw1n/edit", target: "_blank"
      end
      para do
        "Updated and newly developed policies covering network security, incident response, endpoint protection, and continuous monitoring, aligned with ISO 27001 requirements."
      end
    end
  end
end

div class: "row" do
  div class: "col" do
    panel "Bipin - IAM policy" do
      para do
        link_to "This is the link to IAM policy", "https://docs.google.com/document/d/1gL8OpalF65v4Vj5no72-nDdBaHhkjeZTzq5ymy6eOgw/edit?usp=drive_link", target: "_blank"
      end
      para do
        "The IAM policy includes a comprehensive strategy for enforcing role-based access control (RBAC) and multi-factor authentication (MFA) within a web application. Designed in alignment with ISO 27002 recommendations, it demonstrates secure identity management practices, ensuring least privilege access and robust authentication mechanisms like MFA. As per original requirements by Quote Control."
      end
    end
  end
end

  end # content
end
