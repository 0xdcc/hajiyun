<div align="center">

# 🌐 Hajiyun API
### Passerelle & Relais Universel d'API LLM

**Infrastructure IA fiable et unifiée pour le développement logiciel, la traduction, l'intégration d'applications et les workflows IA**

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Site officiel](https://img.shields.io/badge/Site-hajiyun.top-3b82f6)](https://hajiyun.top)
[![Base URL](https://img.shields.io/badge/Base_URL-https%3A%2F%2Fhajiyun.top%2Fv1-10b981)](https://hajiyun.top/v1)
[![OpenAI Compatible](https://img.shields.io/badge/Protocole-OpenAI%20Chat%20Completions-orange)](https://platform.openai.com/docs/api-reference/chat)
[![Auteur](https://img.shields.io/badge/Auteur-@0xdcc-black?logo=x)](https://x.com/0xdcc)

[English](./README.md) • [简体中文](./README_zh.md) • [繁體中文](./README_zh-tw.md) • [Русский](./README_ru.md) • [日本語](./README_ja.md) • [Tiếng Việt](./README_vi.md) • [Français](./README_fr.md)

</div>

---

## 📌 Présentation

**Hajiyun API (https://hajiyun.top)** est une passerelle et plateforme de relais d'API LLM universelle destinée aux développeurs et aux intégrateurs du monde entier. Elle offre une interface standard compatible avec le format OpenAI Chat Completions, un streaming direct natif et un suivi transparent de la consommation.

La plateforme permet la connexion avec les clients, environnements de développement et outils prenant en charge la personnalisation de l'URL de base (Base URL) et le protocole Chat Completions. La compatibilité fonctionnelle dépend de l'implémentation de chaque client et doit être validée par des tests.

- **Base URL de l'API**: `https://hajiyun.top/v1`
- **Point de terminaison Chat Completions**: `https://hajiyun.top/v1/chat/completions`
- **Portail francophone**: `https://hajiyun.top/fr/`
- **Engagements**: Traitement des données conforme aux conditions publiées, protocole standard Chat Completions.

---

## 🧠 Modèles pris en charge et recommandations

> **Note sur la disponibilité des modèles**:
> La liste des modèles accessibles, les identifiants précis (Model ID), les tarifs et les quotas de requêtes évoluent dynamiquement. Veuillez consulter directement la console utilisateur sur [Hajiyun Console](https://hajiyun.top) pour obtenir les informations à jour.

Principales familles de modèles compatibles avec le protocole Chat Completions :
- **Série Anthropic Claude** (consultez la console pour connaître les versions actives)
- **Série Google Gemini**
- **Série OpenAI**
- **Série DeepSeek**

---

## 💻 Exemple d'intégration (cURL)

```bash
curl https://hajiyun.top/v1/chat/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer ***" \
  -d '{
    "model": "YOUR_MODEL_ID_FROM_CONSOLE",
    "messages": [
      {"role": "user", "content": "Bonjour Hajiyun!"}
    ],
    "stream": true
  }'
```

### Configuration des clients compatibles
Pour les outils et clients supportant une URL de base personnalisée :
- **Base URL**: `https://hajiyun.top/v1`
- **API Key**: Clé générée depuis la console Hajiyun
- **Model ID**: Identifiant de modèle valide vérifié dans la console
*Note : Les fonctionnalités spécifiques dépendent de l'outil utilisé.*

---

## ❓ Foire aux questions (FAQ)

- **Comment les données et invites (prompts) sont-elles traitées ?** Les requêtes sont transmises conformément aux conditions d'utilisation et à la politique de confidentialité publiées, via une connexion sécurisée par chiffrement TLS.
- **Toutes les API d'OpenAI sont-elles prises en charge ?** L'infrastructure est centrée sur le protocole **OpenAI Chat Completions**. Les fonctionnalités spécifiques (Audio en temps réel, Assistants) requièrent une vérification préalable par cas d'usage.
- **Y a-t-il une garantie d'absence d'erreurs 429 ou un SLA garanti ?** En tant que passerelle tierce, l'absence totale de limitation de débit (429) ou de latence en amont ne peut être garantie. Il est recommandé de prévoir des mécanismes de nouvelle tentative (retry) dans votre code.
- **S'agit-il d'un service officiel de Google ou OpenAI ?** Non. Hajiyun est un service tiers indépendant. Les dénominations de modèles sont mentionnées à des fins de compatibilité technique et ne constituent pas une validation officielle par ces tiers.

---

## 📄 Licence

- **Licence**: MIT License. Voir [LICENSE](./LICENSE) pour plus d'informations.
- **Responsable**: [@0xdcc](https://x.com/0xdcc)
- **Site Web**: [https://hajiyun.top](https://hajiyun.top)
